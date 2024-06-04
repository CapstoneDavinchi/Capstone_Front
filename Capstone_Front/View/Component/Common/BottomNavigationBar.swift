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
    var body: some View {
        HStack {
            Spacer()
            
            Button() {
                selectedTab = .main
            } label: {
                ZStack {
                    Image(systemName: "house")
                        .frame(width: 28, height: 28)
                }
                .frame(width: 30, height: 30)
            }
            
            Spacer()
            
            Button() {
                selectedTab = .market
            } label: {
                ZStack {
                    Image(systemName: "bag")
                        .frame(width: 28, height: 28)
                }
                .frame(width: 30, height: 30)
            }
            
            Spacer()
            
            Button() {
                selectedTab = .upload
            } label: {
                ZStack {
                    Image(systemName: "menubar.arrow.up.rectangle")
                        .frame(width: 28, height: 28)
                }
                .frame(width: 30, height: 30)
            }
            
            Spacer()
            
            Button() {
                selectedTab = .exhibition
            } label: {
                ZStack {
                    Image(systemName: "calendar")
                        .frame(width: 28, height: 28)
                }
                .frame(width: 30, height: 30)
            }
            
            Spacer()
            
            Button() {
                selectedTab = .mypage
            } label: {
                ZStack {
                    Image(systemName: "person")
                        .frame(width: 28, height: 28)
                }
                .frame(width: 30, height: 30)
            }
            
            Spacer()
        }
        .background(Color.clear).edgesIgnoringSafeArea(.bottom)
    }
}


