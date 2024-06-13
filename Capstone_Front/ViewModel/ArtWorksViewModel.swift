//
//  ArtWorksViewModel.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

import SwiftUI

class ArtworksViewModel: ObservableObject {
    @Published var artworks: [Artwork] = [
        Artwork(imageName: "ArtWork", title: "천국", authorProfile: "Profile", authorName: "youbeen", description: "천국을 표현했다"),
        Artwork(imageName: "ArtWork", title: "천국", authorProfile: "Profile", authorName: "youbeen", description: "천국을 표현했다"),
        Artwork(imageName: "ArtWork", title: "천국", authorProfile: "Profile", authorName: "youbeen", description: "천국을 표현했다"),
        Artwork(imageName: "ArtWork", title: "천국", authorProfile: "Profile", authorName: "youbeen", description: "천국을 표현했다"),
        Artwork(imageName: "ArtWork", title: "천국", authorProfile: "Profile", authorName: "youbeen", description: "천국을 표현했다"),
        Artwork(imageName: "ArtWork", title: "천국", authorProfile: "Profile", authorName: "youbeen", description: "천국을 표현했다"),
        Artwork(imageName: "ArtWork", title: "천국", authorProfile: "Profile", authorName: "youbeen", description: "천국을 표현했다"),
        Artwork(imageName: "ArtWork", title: "천국", authorProfile: "Profile", authorName: "youbeen", description: "천국을 표현했다"),
        Artwork(imageName: "ArtWork", title: "천국", authorProfile: "Profile", authorName: "youbeen", description: "천국을 표현했다"),
        // 필요한 만큼 추가
    ]

    // 비즈니스 로직 추가
}
