//
//  MarketUploadView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/6/24.
//

import SwiftUI

struct MarketUploadView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var backButton : some View {
        ZStack {
            Button{
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width: 7, height: 13)
                    .foregroundColor(Color(hex: "292929"))
            }
        }
        .frame(width: 32, height: 32)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "FFF6EE").ignoresSafeArea() // 전체 배경색 설정
                
                
                ScrollView {
                    VStack(spacing: 50) {
                        Spacer() // 첫 번째 요소를 하단으로 밀어내는 Spacer 삭제
                        
                        ProductImageSelectView()
                        
                        ProductFeedInfoView()
                    }
                    .padding(.top, 1) // 상단의 컨텐츠가 SafeArea에 닿지 않도록 패딩 조정
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
}

#Preview {
    MarketUploadView()
}
