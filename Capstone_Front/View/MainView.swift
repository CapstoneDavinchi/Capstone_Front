//
//  MainView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 4/30/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var tabviewModel = TabBarViewModel()
    @StateObject var ArtWorkviewModel = ArtworksViewModel()
    @Binding var showBottomNavBar: Bool
    
    var body: some View {
        NavigationView {
            ZStack{
                NavigationLink(destination: PersonalPage(tabviewModel: tabviewModel, showBottomNavBar: $showBottomNavBar), isActive: $tabviewModel.showPersonalPage) {
                    EmptyView()
                }
                
                Color(Color.black).ignoresSafeArea()
                
                VStack {
                    TabBarView(currentBackgroundColor: Color(hex: "3A3532"), showBottomNavBar: $showBottomNavBar)
                        .environmentObject(tabviewModel)
                    
                    Spacer()
                    
                    SearchView(backgroundColor: Color(hex: "3A3532"), imageColor: Color.white, hasStroke: false)
                    
                    CategoryScrollView(currentBackgroundColor: Color.black)
                    
                    Divider() // 기본적으로 가로 선
                        .background(Color.white) // 선의 색상을 변경
                        .frame(height: 1)
                        .padding(.horizontal, 12)
                    
                    ArtworksGridView(viewModel: ArtWorkviewModel)
                    
                    
                }
                .overlay(
                    tabviewModel.showMenu ? AnyView(MenuView()
                        .frame(maxWidth: 200)
                        .background(Color.white)
                        .position(x: UIScreen.main.bounds.width - 100, y: UIScreen.main.bounds.height / 2)
                    ) : AnyView(EmptyView())
                )
                
            }
        }
    }
}

//#Preview {
//    MainView()
//}
