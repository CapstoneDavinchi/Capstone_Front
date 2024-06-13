//
//  SecondUserInfoPage.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/13/24.
//

import SwiftUI

struct SecondUserInfoPage: View {
    var body: some View {
        ZStack {
            Image("UserInfoBack")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("미술 취향을 선택해주세요")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.leading, 24)
                    
                    Spacer()
                }
                .padding(.top, 50)
                
                CategoryView()
                    .padding(.top, 50)
                
                Spacer()
                
                Text("갤러리 Davinci에 방문하신 관람객 여러분, 환영합니다.")
                    .font(.system(size: 13))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Button(action: {
                    print("다음")
                }, label: {
                    HStack {
                        Text("다음")
                            .font(.system(size: 15))
                            .foregroundColor(Color.black)
                    }
                    .frame(height: 40) // 높이 설정
                    .padding(.horizontal, 150)
                    .background(Color.white) // 배경색
                    .cornerRadius(10) // 모서리 둥글게
                })
                .padding(.top, 10)
                
            }
        }
    }
}

#Preview {
    SecondUserInfoPage()
}
