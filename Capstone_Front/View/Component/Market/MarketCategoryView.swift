//
//  CategoryView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/6/24.
//

import SwiftUI

struct MarketCategoryView: View {
    let categories = ["유화", "수채화", "아크릴화", "수묵화", "채색화", "벽화", "판화", "콜라쥬"]  // 카테고리 버튼의 가로 길이
    let buttonSpacing: CGFloat = 30  // 버튼 간의 간격

    var body: some View {
        GeometryReader { geometry in
            let numberOfButtonsInRow = Int((geometry.size.width + buttonSpacing) / 110 )
                
            // 각 행마다 카테고리 그룹을 만듭니다
            let rows = categories.chunked(into: numberOfButtonsInRow)

            VStack(alignment: .leading) {
                ForEach(rows, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { category in
                            MarketCategoryCapsule(category: category)
                        }
                    }
                }
            }
            .padding(.leading, 24)
        }
    }
}

#Preview {
    MarketCategoryView()
}

