//
//  ReactionView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/23/24.
//

import SwiftUI

struct ReactionView: View {
    var body: some View {
        HStack (spacing: 16){
            Button(action: {
                print("feedback")
            }, label: {
                VStack {
                    Image("feedback")
                        .resizable()
                        .frame(width: 24, height: 24)
                    
                    Text("feedback")
                        .font(.system(size: 5))
                        .foregroundColor(.white)
                    
                    Text("100")
                        .font(.system(size: 6))
                        .foregroundColor(.white)
                }
                .frame(width: 27, height: 40)
                .background(Color.black)
            })
            
            Button(action: {
                print("comment")
            }, label: {
                VStack {
                    Image(systemName: "text.bubble")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                        .foregroundColor(Color(hex: "D9D9D9"))
                    
                    Text("comment")
                        .font(.system(size: 5))
                        .foregroundColor(.white)
                    
                    Text("100")
                        .font(.system(size: 6))
                        .foregroundColor(.white)
                }
                .frame(width: 27, height: 40)
                .background(Color.black)
            })
            
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
                .background(Color.black)
            })
            
            
        }
    }
}

#Preview {
    ReactionView()
}
