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
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.white.opacity(0),
                        Color(hex: "AF9F96").opacity(0.275641),
                        Color(hex: "5E5754").opacity(0.378205),
                        Color(hex: "38302A").opacity(0.583333),
                        Color(hex: "382D26").opacity(0.75),
                        Color(hex: "332923").opacity(0.9),
                        Color(hex: "29201A").opacity(0.85),
                        Color(hex: "1C1511").opacity(0.9)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                )
                .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 50) {
                        
                        Spacer()
                        
                        ProductImage()
                        
                        ProductInfoView()
                        
                        HStack {
                            Spacer()
                            
                            // UploadButton을 NavigationLink로 감싸 이동하도록 설정
                            NavigationLink(destination: ChattingView().environmentObject(tabviewModel)) {
                                ChatButton()
                            }
                            .padding(.trailing, 24)
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: customBackbutton(buttoncolor: Color(hex: "3A3532")))
    }
}

#Preview {
    MarketDetailView()
}
