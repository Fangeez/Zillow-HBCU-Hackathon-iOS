//
//  HorizontalCarouselUnitView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/11/22.
//

import SwiftUI

struct HorizontalCarouselUnitView: View {
    var imageString: String?
    var address: String
    var price: String
    var candidacy: BuyerCandidacyType
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color("AppColor"), Color(.white)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .rotation3DEffect(
                        Angle(
                            degrees: Double((geometry.frame(in: .global).minX - 20) / -20)
                        ),
                        axis: (x: 0, y: 1, z: 0),
                        anchor: .center,
                        anchorZ: 0.0,
                        perspective: 1.0
                    )
                VStack {
                    Image(imageString!)
                        .resizable()
                        .frame(width: 200, height: 200, alignment: .center)
                        .cornerRadius(20)
                    Text(address)
                    Text(price)
                        .fontWeight(.bold)
                    HStack {
                        Text(K.candidacyString)
                        Text(candidacyTypeToString(candidacyType:candidacy))
                            .fontWeight(.bold)
                            .foregroundColor(candidacyColorFromType(candidacyType: candidacy))
                    }
                }
            }
        }
        .frame(width: 300, height: 300)
    }
}

struct HorizontalCarouselUnitView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCarouselUnitView(imageString: "home", address: "121 Westfield Ave.", price: "$450,000", candidacy: .strong)
    }
}
