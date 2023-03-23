//
//  ReceiptValidator.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/27/23.
//

import Foundation

class ReceiptValidator {
    private let productionUrl = URL(string: "https://buy.itunes.apple.com/verifyReceipt")!
    private let sandboxUrl = URL(string: "https://sandbox.itunes.apple.com/verifyReceipt")!

    func validateReceipt(_ receiptData: Data, completion: @escaping (Result<ReceiptInfo, Error>) -> Void) {
        var request = URLRequest(url: productionUrl)
        request.httpMethod = "POST"
        request.httpBody = receiptData
        
        let requestBody: [String: Any] = [        "receipt-data": receiptData.base64EncodedString(),        "password": "cd522615cf8f4de7a4bd8288abaa3b96",        "exclude-old-transactions": true    ]
           
           do {
               let requestBodyData = try JSONSerialization.data(withJSONObject: requestBody, options: [])
               request.httpBody = requestBodyData
           } catch {
               completion(.failure(error))
               return
           }

        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NSError(domain: "ReceiptValidator", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data returned from server"])))
                return
            }

            do {
                let receiptInfo = try JSONDecoder().decode(ReceiptInfo.self, from: data)
                if receiptInfo.environment == "Sandbox" {
                    // If the receipt was validated against the production URL but returned a
                    // "Sandbox receipt used in production" error, validate against the sandbox URL
                    self.validateReceiptAgainstSandbox(receiptData, completion: completion)
                } else {
                    completion(.success(receiptInfo))
                    let inAppPurchases = receiptInfo.receipt.inApp
                }
            } catch {
                completion(.failure(error))
            }
        }

        task.resume()
    }

    private func validateReceiptAgainstSandbox(_ receiptData: Data, completion: @escaping (Result<ReceiptInfo, Error>) -> Void) {
        var request = URLRequest(url: sandboxUrl)
        request.httpMethod = "POST"
        request.httpBody = receiptData

        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NSError(domain: "ReceiptValidator", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data returned from server"])))
                return
            }

            do {
                let receiptInfo = try JSONDecoder().decode(ReceiptInfo.self, from: data)
                completion(.success(receiptInfo))
            } catch {
                completion(.failure(error))
            }
        }

        task.resume()
    }
}


func isSandboxEnvironment(receiptData: Data) -> Bool {
    guard let receipt = try? JSONSerialization.jsonObject(with: receiptData, options: []) as? [String: Any] else {
        return false
    }

    guard let environment = receipt["environment"] as? String else {
        return false
    }

    return environment == "Sandbox"
}

struct ReceiptInfo: Decodable {
    let status: Int
    let environment: String
    let receipt: Receipt
    // additional fields omitted
}

struct Receipt: Decodable {
    let inApp: [InAppPurchase]
    // additional fields omitted
}

struct InAppPurchase: Decodable {
    let productId: String
    let purchaseDateMs: String
    let expiresDateMs: String?
    // additional fields omitted
}
