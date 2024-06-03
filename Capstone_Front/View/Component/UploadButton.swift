//
//  UploadButton.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/23/24.
//

import SwiftUI

struct UploadButton: View {
    var body: some View {
        NavigationLink(destination: ImageUploadView()) {
            HStack(spacing: 8) {
                Image(systemName: "pencil")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundColor(Color(hex: "191919"))

                Text("새 작품 업로드")
                    .font(.system(size: 12))
                    .foregroundColor(Color.black)
            }
            .frame(height: 38) // 높이 설정
            .padding(.horizontal, 16) // 좌우 패딩
            .background(Color.white) // 배경색
            .cornerRadius(100) // 모서리 둥글게
        }
    }
}

#Preview {
    UploadButton()
}
