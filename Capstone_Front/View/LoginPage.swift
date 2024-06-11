//
//  LoginPage.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/11/24.
//

import SwiftUI
import KakaoSDKAuth
import KakaoSDKUser

struct LoginPage: View {
    @State private var isLoggedIn = false
    
    var body: some View {
        ZStack {
            Image("LoginImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack {
                Image("LoginLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width : UIScreen.main.bounds.width)
                
                VStack (spacing: 110) {
                    Text("미술 작품 공유 플랫폼 Davinci")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                    
                    VStack (spacing: 10){
                        KakaoLoginButton(isLoggedIn: $isLoggedIn)
                        
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $isLoggedIn) { // 로그인 성공 시 ContentView 표시
            ContentView()
        }
    }
}

#Preview {
    LoginPage()
}
