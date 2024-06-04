//
//  ArtWorksGridView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

import SwiftUI

struct ArtworksGridView: View {
    @ObservedObject var viewModel: ArtworksViewModel

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) { // 3열 그리드
                ForEach(viewModel.artworks.indices, id: \.self) { index in
                    ArtworkItemView(artwork: viewModel.artworks[index]) // 각 아이템 표시
                }
            }
        }
        .padding(.horizontal, 12)
    }
}
