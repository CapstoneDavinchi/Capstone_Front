//
//  ContentView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Tab = .main
    var body: some View {
        ZStack {
            Color(Color.clear).edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                switch selectedTab {
                case .main:
                    MainView()
                case .market:
                    MarketView()
                case .upload:
                    ImageUploadView()
                case .exhibition:
                    ExhibitionView()
                case .mypage:
                    MyPageView()
                }
                Spacer()
                BottomNavigationBar(selectedTab: $selectedTab)
                    .background(Color.clear).edgesIgnoringSafeArea(.bottom))
            }
        }
    }
}

#Preview {
    ContentView()
}
