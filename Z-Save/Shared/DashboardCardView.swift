//
//  DashboardCardView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/11/22.
//

import SwiftUI

struct DashboardCardView: View {
    @State var statLabel: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(width: 150, height: 150, alignment: .center)
                .shadow(radius: 10)
                .padding()
            
            Text($statLabel.wrappedValue)
                .foregroundColor(Color("AppColor"))
                .font(Font.system(size: 40))
                .fontWeight(.bold)
        }
    }
}

struct DashboardCardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardCardView(statLabel: "25%")
    }
}
