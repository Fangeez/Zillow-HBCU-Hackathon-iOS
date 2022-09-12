//
//  ManageAccountExpensesView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/12/22.
//

import SwiftUI

struct ManageAccountExpensesView: View {
    @EnvironmentObject var userPaymentData:UserPaymentData
    @State var expenses: [Double] = [0, 0, 0]
    @State var categories: [String] = ["", "", ""]
    var body: some View {
        VStack(spacing:40) {
            ForEach(0..<3) { i in
                ManageAccountExpenseRowView(expense: $categories[i].wrappedValue, amount: String(format: "%.2f", $expenses[i].wrappedValue))
                    .onChange(of: expenses, perform: { _ in
                        userPaymentData.setPaymentAmounts(amounts: expenses)
                    })
                    .onChange(of: categories) { _ in
                        userPaymentData.setPaymentCategories(categories: categories)
                    }
            }
            HStack {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(Color("AppColor"))
                Text("[Add Expense](http://example.com)")
            }
        }
    }
}

struct ManageAccountExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        ManageAccountExpensesView()
    }
}
