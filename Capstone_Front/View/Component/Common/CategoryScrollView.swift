//
//  CategoryScrollView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

// TODO: 작품 카테고리 별로 클릭하면 그 카테고리에 맞는 작품이 뜰 수 있도록
import SwiftUI

struct CategoryScrollView: View {
    var currentBackgroundColor: Color
    var items: [(String, String)] = [
            ("image1", "전체"),
            ("image2", "유화"),
            ("image3", "수채화"),
            ("image4", "아크릴화"),
            ("image5", "수묵화"),
            ("image6", "채색화"),
            ("image7", "벽화"),
            ("image8", "판화"),
            ("image9", "콜라쥬"),
            // 필요에 따라 아이템 추가
        ]

        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) { // 아이템 간격 설정
                    ForEach(items, id: \.1) { item in
                        Button(action: {
                            // 해당 아이템 선택 시 동작 추가 가능
                        }) {
                            CircleImageItem(imageName: item.0, label: item.1, backgroundColor: currentBackgroundColor)
                        }
                    }
                }
                .padding() // HStack 전체 패딩 추가
            }
        }
}

#Preview {
    CategoryScrollView(currentBackgroundColor: Color.black)
}
