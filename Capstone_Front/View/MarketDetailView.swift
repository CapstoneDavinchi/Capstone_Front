//
//  MarketDetailView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/6/24.
//

import SwiftUI

struct MarketDetailView: View {
    @ObservedObject var tabviewModel = TabBarViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.ignoresSafeArea()
                
                VStack(spacing: 0) {
                    TabBarView(currentBackgroundColor: Color.white)
                        .environmentObject(tabviewModel)
                    
                    ProductImage()
                    
                    ProductInfoView()
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        // UploadButton을 NavigationLink로 감싸 이동하도록 설정
                        NavigationLink(destination: ImageUploadView().environmentObject(tabviewModel)) {
                            UploadButton()
                        }
                        .padding(.trailing, 24)
                    }
                }
            }
        }.navigationBarHidden(true) // Navigation bar 숨기기
    }
}

#Preview {
    MarketDetailView()
}
