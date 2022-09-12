//
//  DashboardCardView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/11/22.
//

import SwiftUI

struct DashboardCardView: View {
    @State var statLabel: String
    var statName: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(width: 150, height: 150, alignment: .center)
                .shadow(radius: 10)
                .padding()
            VStack {
                Text($statLabel.wrappedValue)
                    .foregroundColor(Color("AppColor"))
                    .font(Font.system(size: 40))
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                Text(statName)
                    .font(Font.system(size: 15))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
            }
            
        }
    }
}

struct DashboardCardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardCardView(statLabel: "25%", statName: "Longest Streak")
    }
}
