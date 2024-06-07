//
//  BottomNavigationBar.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/4/24.
//

import SwiftUI

enum Tab {
    case main
    case market
    case upload
    case exhibition
    case mypage
}

struct BottomNavigationBar: View {
    @Binding var selectedTab: Tab
    var currentBackgroundColor: Color // 이 값을 ContentView로부터 받아야 합니다.

    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                selectedTab = .main
            }) {
                VStack {
                    Image(systemName: "house")
                        .frame(width: 28, height: 28)
                        .foregroundColor(currentBackgroundColor == .white ? .black : .white)
                    Rectangle() // 밑줄
                        .frame(height: 2)
                        .foregroundColor(currentBackgroundColor == .black ? .yellow : .black)
                        .opacity(selectedTab == .main ? 1 : 0) // 선택된 탭에만 밑줄 표시
                }
            }
            
            Spacer()
            
            Button(action: {
                selectedTab = .market
            }) {
                VStack {
                    Image(systemName: "bag")
                        .frame(width: 28, height: 28)
                        .foregroundColor(currentBackgroundColor == .white ? .black : .white)
                    Rectangle() // 밑줄
                        .frame(height: 2)
                        .foregroundColor(currentBackgroundColor == .black ? .yellow : .black)
                        .opacity(selectedTab == .market ? 1 : 0)
                }
            }
            
            Spacer()
            
            Button(action: {
                selectedTab = .upload
            }) {
                VStack {
                    Image(systemName: "menubar.arrow.up.rectangle")
                        .frame(width: 28, height: 28)
                        .foregroundColor(currentBackgroundColor == .white ? .black : .white)
                    Rectangle() // 밑줄
                        .frame(height: 2)
                        .foregroundColor(currentBackgroundColor == .black ? .yellow : .black)
                        .opacity(selectedTab == .upload ? 1 : 0)
                }
            }
            
            Spacer()
            
            Button(action: {
                selectedTab = .exhibition
            }) {
                VStack {
                    Image(systemName: "calendar")
                        .frame(width: 28, height: 28)
                        .foregroundColor(currentBackgroundColor == .white ? .black : .white)
                    Rectangle() // 밑줄
                        .frame(height: 2)
                        .foregroundColor(currentBackgroundColor == .black ? .yellow : .black)
                        .opacity(selectedTab == .exhibition ? 1 : 0)
                }
            }
            
            Spacer()
            
            Button(action: {
                selectedTab = .mypage
            }) {
                VStack {
                    Image(systemName: "person")
                        .frame(width: 28, height: 28)
                        .foregroundColor(currentBackgroundColor == .white ? .black : .white)
                    Rectangle() // 밑줄
                        .frame(height: 2)
                        .foregroundColor(currentBackgroundColor == .black ? .yellow : .black)
                        .opacity(selectedTab == .mypage ? 1 : 0)
                }
            }
            
            Spacer()
        }
    }
}


