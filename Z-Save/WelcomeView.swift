//
//  WelcomeView.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/11/22.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showDashboardScreen = false
    @State var email:String
    @State var password:String
    var body: some View {
        NavigationView {
            VStack {
                Image("Z-Save_LogoUpdated")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                Text(K.introText)
                    .font(.headline).bold()
                    .multilineTextAlignment(.center)
                VStack {
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                }
                .padding()
                .textFieldStyle(.roundedBorder)
                NavigationLink(destination: DashboardFullView(zScore: 25000), isActive: $showDashboardScreen){
                    SearchButtonView(activeLink: $showDashboardScreen, title: K.loginText)
                        .padding()
                }
                Text("\(K.loginFooterText) [Register here](http://www.google.com)")
            }
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(email: "", password: "")
    }
}
