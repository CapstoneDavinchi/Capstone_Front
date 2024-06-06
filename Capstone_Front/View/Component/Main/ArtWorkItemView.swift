//
//  ArtWorkItemView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

import SwiftUI

// TODO: 클릭하면 작품 상세 화면으로 넘어갈 수 있도록
// TODO: 작품 이미지 API 연동해서 
struct ArtworkItemView: View {
    var artwork: Artwork

    var body: some View {
        VStack(alignment: .leading, spacing: 8) { // 수직 정렬 및 간격 설정
            Image(artwork.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 110, height: 170) // 이미지 크기 조정

            Text(artwork.title)
                .font(.system(size: 10))
                .foregroundColor(.white)

            HStack {
                Image(artwork.authorProfile) // 프로필 사진
                    .resizable()
                    .clipShape(Circle()) // 동그랗게
                    .frame(width: 16, height: 16) // 크기 조정

                Text(artwork.authorName)
                    .font(.system(size: 8))
                    .foregroundColor(.white)
            }

            Text(artwork.description)
                .font(.caption)
                .foregroundColor(.gray)
                .lineLimit(2) // 최대 2줄로 제한
        }
        .padding(4)
        .background(Color.black) // 배경 색상
        .cornerRadius(8) // 모서리 둥글게
        .shadow(radius: 4) // 그림자 효과
    }
}

