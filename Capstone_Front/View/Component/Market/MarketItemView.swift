//
//  MarketItemView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/5/24.
//

import SwiftUI

struct MarketItemView: View {
    var marketItem: MarketItem
    @Binding var showBottomNavBar: Bool

    var body: some View {
        NavigationLink(destination: MarketDetailView(showBottomNavBar: $showBottomNavBar).onAppear {
            showBottomNavBar = false
        }) {
            VStack(alignment: .leading, spacing: 8) { // 수직 정렬 및 간격 설정
                Image(marketItem.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170, height: 170) // 이미지 크기 조정
                
                Text(marketItem.title)
                    .font(.system(size: 10))
                    .foregroundColor(.black)
                
                HStack {
                    Image(marketItem.authorProfile) // 프로필 사진
                        .resizable()
                        .clipShape(Circle()) // 동그랗게
                        .frame(width: 16, height: 16) // 크기 조정
                    
                    Text(marketItem.authorName)
                        .font(.system(size: 8))
                        .foregroundColor(.black)
                }
                
                Text(marketItem.price + "원")
                    .font(.system(size: 8))
                    .foregroundColor(.black)
                
                Text(marketItem.description)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(2) // 최대 2줄로 제한
            }
            .padding(4)
            .background(Color(hex: "FFF6EE"))// 배경 색상
            .cornerRadius(8) // 모서리 둥글게
        }
    }
}

