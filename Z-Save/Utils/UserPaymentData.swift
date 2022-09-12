//
//  UserPaymentData.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/12/22.
//

import Combine

class UserPaymentData: ObservableObject {
    
    @Published var paymentCategories: [String] = []
    @Published var paymentAmounts: [Double] = []
    
    init() {
        self.paymentCategories = ["Principal", "Insurance", "Taxes"]
        self.paymentAmounts = [1100, 600, 200]
    }
    
    func setPaymentCategories(categories:[String]) {
        paymentCategories = categories
    }
    
    func setPaymentAmounts(amounts:[Double]) {
        paymentAmounts = amounts
    }
    
    func getTotalAmount() -> Double {
        return paymentAmounts.reduce(0, +)
    }
}
