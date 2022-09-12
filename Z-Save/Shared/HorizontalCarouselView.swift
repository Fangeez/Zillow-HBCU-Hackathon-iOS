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
                ForEach(0 ..< 5) { item in
                    HorizontalCarouselUnitView(imageString: "home", address: "121 Westfield Ave.", price: "$450,000", candidacy: .strong)
                }
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
