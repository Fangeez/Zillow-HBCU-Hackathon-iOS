//
//  ManageAccountFullView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/12/22.
//

import SwiftUI
import iPaymentButton

struct ManageAccountFullView: View {
    @EnvironmentObject var userPaymentData:UserPaymentData
    let paymentHandler = PaymentHandler()
    var body: some View {
        ScrollView {
            VStack {
                ManageAccountHeaderView(profilePictureString: "ProfilePic", name: "Nan Dawurang")
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                ManageAccountExpensesView()
                    .environmentObject(userPaymentData)
                iPaymentButton(type: .plain, style: .black) {
                    paymentHandler.startPayment {(success) in
                        if success {
                            print("Success")
                        } else {
                            print("Failed")
                        }
                    }
                }
                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 30))
            }
        }
        
    }
}

struct ManageAccountFullView_Previews: PreviewProvider {
    static var previews: some View {
        ManageAccountFullView()
    }
}
