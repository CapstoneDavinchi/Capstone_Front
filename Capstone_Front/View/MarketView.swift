//
//  MarketView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/4/24.
//

import SwiftUI

struct MarketView: View {
    @StateObject var tabviewModel = TabBarViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(destination: PersonalPage(tabviewModel: tabviewModel), isActive: $tabviewModel.showPersonalPage) {
                    EmptyView()
                }
                Color(hex: "FFF6EE").ignoresSafeArea()
                
                VStack {
                    TabBarView(currentBackgroundColor: Color(hex: "FFF6EE"))
                        .environmentObject(tabviewModel)
                    
                    SearchView(backgroundColor: Color.clear, imageColor: Color(hex: "292929"), hasStroke: true)
                    
                    CategoryScrollView(currentBackgroundColor: Color(hex: "FFF6EE"))
                }
            }
        }
    }
}

#Preview {
    MarketView()
}
