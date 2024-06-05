//
//  TabBarView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var viewModel: TabBarViewModel
    var currentBackgroundColor: Color
    
    private func isDarkBackground(_ color: Color) -> Bool {
           color == Color.black || color == Color(hex: "3A3532")
    }
    
    var body: some View {
        HStack {
            ZStack {
                // 왼쪽 개인작품전시페이지
                if viewModel.showPersonalPage {
                    // PersonalPage가 활성화 되어 있을 때 뒤로 가기 버튼
                    Button(action: {
                        viewModel.showPersonalPage = false
                    }) {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .frame(width: 7, height: 13)
                            .foregroundColor(.white)
                    }
                } else {
                    // PersonalPage가 비활성화 되어 있을 때 프로필 버튼
                    Button(action: {
                        viewModel.showPersonalPage = true
                    }) {
                        Image("Profile")
                            .resizable()
                            .frame(width: 32, height: 32)
                    }
                }
            }
            .frame(width: 32, height: 32)
            
            Spacer()
            
            Image("Image_AppTitle")
                .resizable()
                .frame(width: 78, height: 12)
            Spacer()
            
            ZStack {
                Button(action: {
                    viewModel.showMenu.toggle() // 카테고리 메뉴 표시/ 표시 X
                }) {
                    Image(systemName: "list.dash")
                        .resizable()
                        .frame(width: 22, height: 12)
                }
            }
            .frame(width: 32, height: 32)
        }
        .padding(.horizontal, 16)
        .frame(height: 64)
        .background(Color.clear)
        .foregroundColor(isDarkBackground(currentBackgroundColor) ? .white : .black)
    }
    
    func navigateToProfile() {
        print("Navigating")
    }
}
