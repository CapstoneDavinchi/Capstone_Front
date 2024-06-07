//
//  ProductImage.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/6/24.
//

import SwiftUI

struct ProductImage: View {
    var body: some View {
        ZStack {
            Color(Color.clear).ignoresSafeArea()
            // 이미지에 사용자 정의 모양을 적용합니다.
            Image("marketItem") // 이미지명을 실제 이미지의 이름으로 변경하세요.
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 230, height: 300)
                .cornerRadius(30)
        }
    }
}

#Preview {
    ProductImage()
}
