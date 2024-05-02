//
//  MainView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 4/30/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = TabBarViewModel()
    
    var body: some View {
        ZStack{
            Color(red: 19 / 255, green: 19 / 255, blue: 19 / 255).ignoresSafeArea()
            
            VStack {
                TabBarView()
                    .environmentObject(viewModel)
                
                Spacer()
            }
            .overlay(
                viewModel.showMenu ? AnyView(MenuView()
                    .frame(maxWidth: 200)
                    .background(Color.white)
                    .position(x: UIScreen.main.bounds.width - 100, y: UIScreen.main.bounds.height / 2)
                            ) : AnyView(EmptyView())
            )
        }
    }
}

#Preview {
    MainView()
}
