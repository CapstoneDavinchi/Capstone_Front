//
//  ImageUploadView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/30/24.
//

import SwiftUI

struct ImageUploadView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var backButton : some View {
        ZStack {
            Button{
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width: 7, height: 13)
                    .foregroundColor(.white)
            }
        }
        .frame(width: 32, height: 32)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "3A3532").ignoresSafeArea() // 전체 배경색 설정
                
                
                ScrollView {
                    VStack(spacing: 50) {
                        Spacer() // 첫 번째 요소를 하단으로 밀어내는 Spacer 삭제
                        
                        ImageSelectView()
                        
                        FeedInfoView()
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
    ImageUploadView()
}
