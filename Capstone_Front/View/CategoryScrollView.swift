//
//  CategoryScrollView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

// TODO: 작품 카테고리 별로 클릭하면 그 카테고리에 맞는 작품이 뜰 수 있도록
import SwiftUI

struct CategoryScrollView: View {
    var items: [(String, String)] = [
            ("image1", "Label1"),
            ("image2", "Label2"),
            ("image3", "Label3"),
            ("image4", "Label4"),
            ("image5", "Label5"),
            ("image6", "Label6"),
            ("image7", "Label7"),
            ("image8", "Label8"),
            ("image9", "Label9"),
            // 필요에 따라 아이템 추가
        ]

        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) { // 아이템 간격 설정
                    ForEach(items, id: \.1) { item in
                        Button(action: {
                            // 해당 아이템 선택 시 동작 추가 가능
                        }) {
                            CircleImageItem(imageName: item.0, label: item.1)
                        }
                    }
                }
                .padding() // HStack 전체 패딩 추가
            }
        }
}

#Preview {
    CategoryScrollView()
}
