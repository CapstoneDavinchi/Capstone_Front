//
//  Capstone_FrontApp.swift
//  Capstone_Front
//
//  Created by 최유빈 on 4/16/24.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct Capstone_FrontApp: App {
    init() {
        let kakaoAppKey = "124517a26bcaed7414c8c0d7277948a1"
        KakaoSDK.initSDK(appKey: kakaoAppKey as! String)
        
    }
    var body: some Scene {
        WindowGroup {
//            ContentView()
            LoginPage()
        }
    }
}
