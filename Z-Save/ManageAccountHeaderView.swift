//
//  ManageAccountHeaderView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/12/22.
//

import SwiftUI

struct ManageAccountHeaderView: View {
    @State var profilePictureString: String?
    @State var name: String
    var body: some View {
        VStack {
            Image(profilePictureString!)
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color("AppColor"), lineWidth: 5))
                .padding()
            Text(name)
                .font(Font.system(size: 30))
                .fontWeight(.bold)
                .padding()
            HStack {
                Image(systemName: "location.fill")
                Text("[Baltimore, MD](http://example.com)")
            }
        }
        
    }
}

struct ManageAccountHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ManageAccountHeaderView(profilePictureString: "ProfilePic", name: "Nan Dawurang")
    }
}
