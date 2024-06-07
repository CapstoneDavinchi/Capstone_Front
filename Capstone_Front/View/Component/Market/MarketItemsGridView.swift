//
//  MarketItemsGridView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/5/24.
//

import SwiftUI

struct MarketItemsGridView: View {
    @ObservedObject var viewModel: MarketItemViewModel
    @Binding var showBottomNavBar: Bool

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(), GridItem()]) { // 2열 그리드
                ForEach(viewModel.marketItems.indices, id: \.self) { index in
                    MarketItemView(marketItem: viewModel.marketItems[index], showBottomNavBar: $showBottomNavBar) // 각 아이템 표시
                }
            }
        }
        .padding(.horizontal, 12)
    }
}


