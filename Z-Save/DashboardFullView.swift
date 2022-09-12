//
//  DashboardView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/11/22.
//

import SwiftUI

struct DashboardFullView: View {
    @State private var showDashboardScreen = false
    @State var zScore:Double
    @ObservedObject var userPaymentData = UserPaymentData()
    var body: some View {
        ScrollView {
            VStack { 
                DashboardHeaderView(totalAmount: "$\(String(format: "%.2f", $zScore.wrappedValue))")
                    .padding()
                    .environmentObject(userPaymentData)
                PieChartView(values: userPaymentData.paymentAmounts,
                             names: userPaymentData.paymentCategories,
                             formatter: {value in String(format: "$%.2f", value)},
                             colors: [.blue, .yellow, .cyan],
                             backgroundColor: Color(.white),
                             widthFraction: 0.95,
                             innerRadiusFraction: 0.60)
                .frame(width: 300, height: 450, alignment: .center)
                HStack {
                    DashboardCardView(statLabel: "8🔥", statName: "Longest Streak")
                    DashboardCardView(statLabel: "0.9%", statName: "Current Percentage Cashback")
                }
                HStack {
                    DashboardCardView(statLabel: "April 8", statName: "Next Deposit Date")
                    DashboardCardView(statLabel: "179", statName: "Z-Score")
                }
                
                Text(K.checkoutHomesString)
                    .font(Font.system(size: 20))
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 100,alignment: .center)
                
                HorizontalCarouselView()
                Button("Log Out") {}
                    .padding()
                    .foregroundColor(.red)
                    .font(Font.system(size: 20))
            }
        }
        .navigationBarHidden(true)
    }
}

struct DashboardFullView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardFullView(zScore: 25000)
    }
}
