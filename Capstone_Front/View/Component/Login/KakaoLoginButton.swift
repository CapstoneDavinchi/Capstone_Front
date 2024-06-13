//
//  KakaoLoginButton.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/11/24.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser

struct KakaoLoginButton: View{
    @Binding var isLoggedIn: Bool
    
    var body: some View{
        Button {
            loginWithKakao()
        } label : {
            Image("kakao_login_large_wide")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width : UIScreen.main.bounds.width * 0.9)
        }
    }
    
    func loginWithKakao() {
        if UserApi.isKakaoTalkLoginAvailable() {
            UserApi.shared.loginWithKakaoTalk { oauthToken, error in
                handleLoginResult(oauthToken: oauthToken, error: error)
            }
        } else {
            UserApi.shared.loginWithKakaoAccount { oauthToken, error in
                handleLoginResult(oauthToken: oauthToken, error: error)
            }
        }
    }

    private func handleLoginResult(oauthToken: OAuthToken?, error: Error?) {
        if let error = error {
            print("에러에러")
            print(error)
        } else if oauthToken != nil {
            print("성공")
            isLoggedIn = true // 로그인 성공 상태 업데이트
        }
    }
}
