//
//  ManageAccountExpenseRowView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/12/22.
//

import SwiftUI

struct ManageAccountExpenseRowView: View {
    @State var expense: String
    @State var amount: String
    var body: some View {
        HStack {
            TextField("Expense", text: $expense)
                .textFieldStyle(.roundedBorder)
                .shadow(color: Color("AppColor"), radius: 2, x: 2, y: 2)
                .frame(width: 150, height: 20, alignment: .leading)
            Spacer()
            HStack {
                Text("$")
                TextField("Amount", text: $amount)
                    .textFieldStyle(.roundedBorder)
                    .shadow(color: Color("AppColor"), radius: 2, x: 2, y: 2)
                    .frame(width: 150, height: 20, alignment: .trailing)
            }
        }
        .frame(width: 370, height: 20, alignment: .center)
    }
}

struct ManageAccountExpenseRowView_Previews: PreviewProvider {
    static var previews: some View {
        ManageAccountExpenseRowView(expense: "Taxes", amount: "150")
    }
}
