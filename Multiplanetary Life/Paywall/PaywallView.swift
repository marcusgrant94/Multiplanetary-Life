//
//  PaywallView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI
import StoreKit

struct PaywallView: View {
    @EnvironmentObject
        private var purchaseManager: PurchaseManager

        var body: some View {
            NavigationStack {
            VStack(spacing: 20) {
                
                Image("AppLogo")
                    .resizable()
                    .frame(width: 180, height: 185)
                
                Text("Help Make Life Multiplanetary")
                    .offset(y: -15)
                    .font(.title).bold()
                    .padding(.horizontal)
                Text("Subscribe to Premium to unlock all quizzes and future updates for free.")
                    .offset(y: -15)
                    .padding(.horizontal)
                    .font(.title2)
                HStack(spacing: 1) {
                ForEach(purchaseManager.products) { product in
                    Button {
                        Task {
                            do {
                                try await purchaseManager.purchase(product)
                            } catch {
                                print(error)
                            }
                        }
                    } label: {
                        VStack(spacing: 1) {
                            Text("\(product.displayName)")
                                .foregroundColor(.black)
                                .padding(.horizontal)
                            Text("\(product.displayPrice)")
                                .padding()
                                .foregroundColor(.black)
                                .font(.title3).bold()
                            Text("Save 10%")
                                .foregroundColor(.yellow)
                        }
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(20)
                        .frame(width: 125, height: 100)
                        .shadow(radius: 4)
                        .padding(2)
                    }
                }
                }.task {
                    Task {
                        do {
                            try await purchaseManager.loadProducts()
                        } catch {
                            print(error)
                        }
                    }
                }
                    Button {
                        Task {
                            do {
                                try await AppStore.sync()
                            } catch {
                                print(error)
                            }
                        }
                    } label: {
                        Text("Restore Purchases")
                            .padding()
                    }
                }
            }
        }
}



struct PaywallView_Previews: PreviewProvider {
    static var previews: some View {
        PaywallView()
            .environmentObject(PurchaseManager())
    }
}
