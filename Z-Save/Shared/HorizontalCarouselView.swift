//
//  HorizontalCarouselView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/11/22.
//

import SwiftUI

struct HorizontalCarouselView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                HorizontalCarouselUnitView(imageString: "home", address: "121 Westfield Ave.", price: "$450,000", candidacy: .neutral)
                HorizontalCarouselUnitView(imageString: "house2", address: "116 Echodale Ave.", price: "$200,000", candidacy: .verystrong)
                HorizontalCarouselUnitView(imageString: "house3", address: "291 Lakeview Lane", price: "$800,000", candidacy: .weak)
                HorizontalCarouselUnitView(imageString: "house5", address: "23 East Bellevue", price: "$320,000", candidacy: .strong)
                HorizontalCarouselUnitView(imageString: "house4", address: "179 Dashview Ave.", price: "$900,000", candidacy: .veryweak)
                
                .frame(width: 300, height: 300)
            }
        }
        .padding()
    }
}

struct HorizontalCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCarouselView()
    }
}
