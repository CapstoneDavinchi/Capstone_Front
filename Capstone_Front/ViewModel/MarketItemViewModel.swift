//
//  MarketItemViewModel.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/5/24.
//

import Foundation

class MarketItemViewModel: ObservableObject {
    @Published var marketItems: [MarketItem] = [
        MarketItem(imageName: "marketItem", title: "작품명1", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명", price: "20000"),
        MarketItem(imageName: "marketItem", title: "작품명1", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명", price: "20000"),
        MarketItem(imageName: "marketItem", title: "작품명1", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명", price: "20000"),
        MarketItem(imageName: "marketItem", title: "작품명1", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명", price: "20000"),
        MarketItem(imageName: "marketItem", title: "작품명1", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명", price: "20000"),
        MarketItem(imageName: "marketItem", title: "작품명1", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명", price: "20000"),
        MarketItem(imageName: "marketItem", title: "작품명1", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명", price: "20000"),
        MarketItem(imageName: "marketItem", title: "작품명1", authorProfile: "Profile", authorName: "Sample_account", description: "작품 설명", price: "20000"),
        
        // 필요한 만큼 추가
    ]

    // 비즈니스 로직 추가
}
