//
//  DashboardView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/11/22.
//

import SwiftUI
import SwiftPieChart

struct DashboardFullView: View {
    @State private var showDashboardScreen = false
    @State var zScore:String
    @State var zScoreCosts:[Double]
    @State var zScoreCategories:[String]
    var body: some View {
        ScrollView {
            VStack {
                DashboardHeaderView(totalAmount: $zScore.wrappedValue)
                    .padding()
                PieChartView(values: zScoreCosts,
                             names: zScoreCategories,
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
                    DashboardCardView(statLabel: "25%", statName: "Lorem")
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
        DashboardFullView(zScore: "$25,000", zScoreCosts: [1100, 600, 200], zScoreCategories: ["Principal", "Insurance", "Taxes"])
    }
}
