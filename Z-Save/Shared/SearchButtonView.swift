//  Created by Harris Dawurang on 4/4/22.

import SwiftUI

struct SearchButtonView: View {
    @Binding var activeLink: Bool
    var title: String
    var body: some View {
        Button {
            activeLink = true
        } label: {
            HStack(spacing: 10) {
                Text(title)
            }
            .font(Font.system(size: 18))
            .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
            .foregroundColor(.white)
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("AppColor"))
            }

        }
    }
}

struct SearchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchButtonView(activeLink: .constant(true), title: "Search")
            .previewLayout(.sizeThatFits)
    }
}
