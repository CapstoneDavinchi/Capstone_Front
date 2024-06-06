//
//  UploadButton.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/6/24.
//

import SwiftUI

struct MarketUploadButton: View {
    var body: some View {
        NavigationLink(destination: MarketUploadView()) {
            HStack(spacing: 8) {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 14, height: 14)
                    .foregroundColor(Color.white)
                
                Text("새 상품 업로드")
                    .font(.system(size: 12))
                    .foregroundColor(Color.white)
            }
            .frame(height: 38) // 높이 설정
            .padding(.horizontal, 16) // 좌우 패딩
            .background(Color(hex: "3A3532")) // 배경색
            .cornerRadius(100) // 모서리 둥글게
        }
    }
}

#Preview {
    MarketUploadButton()
}

