//
//  DashboardHeaderView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/11/22.
//

import SwiftUI

struct DashboardHeaderView: View {
    @State private var showZSaveSetup = false
    @State private var showWebView = false
    @State var totalAmount: String
    var body: some View {
        VStack {
            Text(K.dashHeaderAmount)
                .font(Font.system(size: 23))
                .padding()
            Text($totalAmount.wrappedValue)
                .foregroundColor(Color("AppColor"))
                .font(Font.system(size: 50))
                .fontWeight(.bold)
            SearchButtonView(activeLink: $showZSaveSetup, title: K.dashHeaderManageAccount)
            SearchButtonView(activeLink: $showWebView, title: K.dashHeaderMortgageCalculator)
                .sheet(isPresented: $showWebView) {
                    WebView(url: URL(string: K.mortgageCalculatorUrl)!)
                }
        }
    }
}

struct DashboardHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardHeaderView(totalAmount: "$25,000")
    }
}
