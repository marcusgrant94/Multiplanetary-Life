//
//  PurchaseManager.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import Foundation
import StoreKit

@MainActor
class PurchaseManager: ObservableObject {

    let productIds = ["pro_weekly1", "pro_monthly1", "pro_yearly1"]
    let receiptValidator = ReceiptValidator()
    
    func validateReceipt(_ receiptData: Data) {
            receiptValidator.validateReceipt(receiptData) { result in
                switch result {
                case .success(let receiptInfo):
                    // Handle successful validation
                    print("Receipt validated successfully: \(receiptInfo)")
                case .failure(let error):
                    // Handle validation error
                    print("Receipt validation failed with error: \(error)")
                }
            }
        }

    @Published
    private(set) var products: [Product] = []
    private var productsLoaded = false

    func loadProducts() async throws {
        guard !self.productsLoaded else { return }
        self.products = try await Product.products(for: productIds)
        self.productsLoaded = true
    }

    func purchase(_ product: Product) async throws {
        let result = try await product.purchase()

        switch result {
        case let .success(.verified(transaction)):
            // Successful purhcase
            await transaction.finish()
            await self.updatePurchasedProducts()
        case let .success(.unverified(_, error)):
            // Successful purchase but transaction/receipt can't be verified
            // Could be a jailbroken phone
            break
        case .pending:
            // Transaction waiting on SCA (Strong Customer Authentication) or
            // approval from Ask to Buy
            break
        case .userCancelled:
            // ^^^
            break
        @unknown default:
            break
        }
    }
    
    private var updates: Task<Void, Never>? = nil

        init() {
            updates = observeTransactionUpdates()
        }

        deinit {
            updates?.cancel()
        }
    
    private func observeTransactionUpdates() -> Task<Void, Never> {
           Task(priority: .background) { [unowned self] in
               for await verificationResult in Transaction.updates {
                   // Using verificationResult directly would be better
                   // but this way works for this tutorial
                   await self.updatePurchasedProducts()
               }
           }
       }
    
    @Published
       private(set) var purchasedProductIDs = Set<String>()

       var hasUnlockedPro: Bool {
          return !self.purchasedProductIDs.isEmpty
       }

       func updatePurchasedProducts() async {
           for await result in Transaction.currentEntitlements {
               guard case .verified(let transaction) = result else {
                   continue
               }

               if transaction.revocationDate == nil {
                   self.purchasedProductIDs.insert(transaction.productID)
               } else {
                   self.purchasedProductIDs.remove(transaction.productID)
               }
           }
       }
}
