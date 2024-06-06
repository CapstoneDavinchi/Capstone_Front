//
//  ProductInfoView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/6/24.
//

import SwiftUI

struct ProductInfoView: View {
    var body: some View {
        VStack (spacing: 20){
            HStack {
                Text("작품명")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .background(.clear)
                    .padding(.leading, 24)
                
                Spacer()
                
                Text("2024/04/07")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .background(.clear)
            }
            
            Text("2024/04/07")
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(.clear)
                .padding(.leading, 24)
            
            Text("20000원")
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(.clear)
                .padding(.leading, 24)
            
            HStack {
                CateLabelView(category: "유화")
                    .padding(.leading, 24)
                CateLabelView(category: "상상화")
                
                Spacer()
                
                Button(action: {
                    print("heart")
                }, label: {
                    VStack {
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color(hex: "D9D9D9"))
                        
                        Text("heart")
                            .font(.system(size: 5))
                            .foregroundColor(.white)
                        
                        Text("100")
                            .font(.system(size: 6))
                            .foregroundColor(.white)
                    }
                    .frame(width: 27, height: 40)
                    .background(Color.clear)
                })
                .padding(.trailing, 24)
                
            }
            .background(.clear)
            
            Text("더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미미텍스트더미텍스트더미텍스트더미텍스트더미텍스트")
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(.clear)
                .padding(.horizontal, 24)
        }
        
    }
}

#Preview {
    ProductInfoView()
}
