//
//  ContentView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Tab = .main
    @State private var showBottomNavBar: Bool = true // BNB 표시 상태변수
    
    var body: some View {
        ZStack {
            currentBackgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                switch selectedTab {
                case .main:
                    MainView(showBottomNavBar: $showBottomNavBar)
                case .market:
                    MarketView(showBottomNavBar: $showBottomNavBar)
                case .upload:
                    ImageUploadView(showBottomNavBar: $showBottomNavBar)
                case .exhibition:
                    ExhibitionView()
                case .mypage:
                    MyPageView()
                }
                Spacer()
                if showBottomNavBar {
                    BottomNavigationBar(selectedTab: $selectedTab, currentBackgroundColor: currentBackgroundColor)
                }
            }
        }
    }
    var currentBackgroundColor: Color {
            switch selectedTab {
            case .main:
                return Color.black // 메인 뷰 배경색
            case .market:
                return Color(hex: "FFF6EE") // 마켓 뷰 배경색
            case .upload:
                return Color(hex: "3A3532") // 업로드 뷰 배경색
            case .exhibition:
                return Color.white // 전시 뷰 배경색
            case .mypage:
                return Color.white // 마이 페이지 배경색
            }
        }
}

#Preview {
    ContentView()
}
