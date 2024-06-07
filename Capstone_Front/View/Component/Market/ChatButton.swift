//
//  ChatButton.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/7/24.
//

import SwiftUI

struct ChatButton: View {
    var body: some View {
        NavigationLink(destination: ChattingView()) {
            HStack(spacing: 8) {
                Text("채팅하기")
                    .font(.system(size: 11))
                    .foregroundColor(Color.white)
            }
            .frame(height: 32) // 높이 설정
            .padding(.horizontal, 16) // 좌우 패딩
            .background(Color(hex: "466C64")) // 배경색
            .cornerRadius(30) // 모서리 둥글게
        }
    }
}

#Preview {
    ChatButton()
}
