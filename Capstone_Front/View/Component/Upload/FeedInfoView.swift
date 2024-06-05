//
//  FeedInfoView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/31/24.
//

import SwiftUI

struct FeedInfoView: View {
    @State private var nameText = ""
    @State private var infoText = ""
    
    var body: some View {
        VStack (spacing: 30){
            VStack (spacing: 12) {
                HStack {
                    Text("작품명")
                        .font(.system(size: 16))
                        .foregroundColor(Color.white)
                        .padding(.leading, 24)
                    
                    Spacer()
                }
                
                CustomTextField(text: $nameText, placeholder: "작품명", foregroundColor: UIColor(Color.white))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 0.7)
                    )
                    .padding(.horizontal, 24)
                    .frame(height: 40)
            }
            
            VStack (spacing: 12) {
                HStack {
                    Text("설명")
                        .font(.system(size: 16))
                        .foregroundColor(Color.white)
                        .padding(.leading, 24)
                    
                    Spacer()
                }
                
                CustomMultiLineTextField(text: $infoText, placeholder: "설명을 입력해주세요")
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 0.7)
                    )
                    .padding(.horizontal, 24)
                    .frame(height: 200)
            }
            
            VStack (spacing: 12) {
                HStack {
                    Text("카테고리")
                        .font(.system(size: 16))
                        .foregroundColor(Color.white)
                        .padding(.leading, 24)
                    
                    Spacer()
                }
                
               CategoryView()
                    .frame(height: 100)
            }
            
            Spacer()
            
            Button(action: {
                print("완료")
            }, label: {
                Text("완료")
                    .font(.system(size: 16))
                    .padding()
                    .frame(width: 260, height: 40)
                    .foregroundColor(Color.white)
                    .background(Color.clear)
                    .clipShape(Capsule())
                    .overlay(
                        Capsule().stroke(Color.white, lineWidth: 1)
                    )
                    
            })
            

        }
    }
}

#Preview {
    FeedInfoView()
}
