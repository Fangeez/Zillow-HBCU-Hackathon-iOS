//
//  ManageAccountExpensesView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/12/22.
//

import SwiftUI

struct ManageAccountExpensesView: View {
    var body: some View {
        VStack(spacing:40) {
            ForEach(1..<4) { _ in
                ManageAccountExpenseRowView(expense: "", amount: "")
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
