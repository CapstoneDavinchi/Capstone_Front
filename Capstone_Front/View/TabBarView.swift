//
//  TabBarView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var viewModel: TabBarViewModel
    
    var body: some View {
        HStack {
            // 왼쪽 마이페이지
            Button(action: {
                navigateToProfile()
            }) {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 32, height: 32)
            }
            
            Spacer()
            
            Text("DA VINCI")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.white)
            
            Spacer()
            
            Button(action: {
                viewModel.showMenu.toggle() // 카테고리 메뉴 표시/ 표시 X
            }) {
                Image(systemName: "list.dash")
                    .resizable()
                    .frame(width: 28, height: 28)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(Color.black)
        .foregroundColor(.white)
    }
    
    func navigateToProfile() {
        print("Navigating")
    }
}

#Preview {
    TabBarView()
}
