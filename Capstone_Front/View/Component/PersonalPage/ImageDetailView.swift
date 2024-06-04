//
//  ImageDetailView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/22/24.
//

import SwiftUI

struct ImageDetailView: View {
    var body: some View {
        VStack (spacing: 20){
            Text("작품명")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .background(.black)
            
            Text("2024/04/07")
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(.black)
            
            HStack {
                CateLabelView(category: "유화")
                    .padding(.leading, 24)
                CateLabelView(category: "상상화")
                
                Spacer()
                
                ReactionView()
                    .padding(.trailing, 24)
                
            }
            .background(.black)
            
            Text("더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미텍스트더미미텍스트더미텍스트더미텍스트더미텍스트더미텍스트")
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(.black)
                .padding(.horizontal, 24)
        }
        
    }
}

#Preview {
    ImageDetailView()
}
