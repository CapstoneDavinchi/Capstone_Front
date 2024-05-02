//
//  ArtWorksViewModel.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

import SwiftUI

class ArtworksViewModel: ObservableObject {
    @Published var artworks: [Artwork] = [
        Artwork(imageName: "ArtWork", title: "작품명1", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명"),
        Artwork(imageName: "ArtWork", title: "작품명2", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명"),
        Artwork(imageName: "ArtWork", title: "작품명3", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명"),
        Artwork(imageName: "ArtWork", title: "작품명1", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명"),
        Artwork(imageName: "ArtWork", title: "작품명2", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명"),
        Artwork(imageName: "ArtWork", title: "작품명3", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명"),
        Artwork(imageName: "ArtWork", title: "작품명1", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명"),
        Artwork(imageName: "ArtWork", title: "작품명2", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명"),
        Artwork(imageName: "ArtWork", title: "작품명3", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명"),
        // 필요한 만큼 추가
    ]

    // 비즈니스 로직 추가
}
