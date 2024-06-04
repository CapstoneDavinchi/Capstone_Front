//
//  CircleImageItem.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

import SwiftUI

struct CircleImageItem: View {
    var imageName: String
    var label: String

    var body: some View {
        VStack {
            Image("ArtCate") // Asset에 저장된 이미지 사용
                .resizable()
                .clipShape(Circle()) // 이미지 모양을 동그랗게 변형
                .frame(width: 50, height: 50) // 이미지 크기 설정
                .foregroundColor(.white)

            Text(label) // 이미지 아래에 라벨 추가
                .font(.caption) // 글자 크기를 캡션 스타일로 설정
                .foregroundColor(.white)
        }
    }
}
