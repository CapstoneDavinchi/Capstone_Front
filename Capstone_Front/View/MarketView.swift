//
//  MarketView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/4/24.
//

import SwiftUI

struct MarketView: View {
    @StateObject var tabviewModel = TabBarViewModel()
    @StateObject var marketItemviewmodel = MarketItemViewModel()
    @Binding var showBottomNavBar: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(destination: PersonalPage(tabviewModel: tabviewModel, showBottomNavBar: $showBottomNavBar), isActive: $tabviewModel.showPersonalPage) {
                    EmptyView()
                }
                
                Color(hex: "FFF6EE").ignoresSafeArea()
                
                VStack {
                    TabBarView(currentBackgroundColor: Color(hex: "FFF6EE"), showBottomNavBar: $showBottomNavBar)
                        .environmentObject(tabviewModel)
                    
                    SearchView(backgroundColor: Color.clear, imageColor: Color(hex: "292929"), hasStroke: true)
                    
                    CategoryScrollView(currentBackgroundColor: Color(hex: "FFF6EE"))
                    
                    Divider() // 기본적으로 가로 선
                        .background(Color.black) // 선의 색상을 변경
                        .frame(height: 1)
                        .padding(.horizontal, 12)
                    
                    MarketItemsGridView(viewModel: marketItemviewmodel, showBottomNavBar: $showBottomNavBar)
                }
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        MarketUploadButton(showBottomNavBar: $showBottomNavBar) // 여기에 UploadButton 구현
                            .padding(16) // 우측 하단에 적당한 간격을 두기
                    }
                }
            }
        }
    }
}

#Preview {
    MarketView(showBottomNavBar: .constant(true))
}
