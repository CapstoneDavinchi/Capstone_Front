//
//  MyPageView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/4/24.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        VStack {
            HStack {
                Image("Profile")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .padding(.leading, 24)
                
                VStack( spacing: 4 ) {
                    HStack {
                        Text("Youbeenzino")
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("카카오 로그인")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                }
                .padding(.leading, 16)
                
                Spacer()
                
                Button(action: {
                    print("수정")
                }, label: {
                    HStack {
                        Text("프로필 수정")
                            .font(.system(size: 10))
                            .foregroundColor(Color.black)
                    }
                    .frame(height: 26) // 높이 설정
                    .padding(.horizontal, 8)
                    .background(Color(hex: "E7DDD4")) // 배경색
                    .cornerRadius(20) // 모서리 둥글게
                })
                .padding(.trailing, 24)
            }
            .padding(.top, 16)
            
            HStack {
                Text("나의 활동")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .padding(.leading, 24)
                
                Spacer()
            }
            .padding(.top, 30)
            
            Divider() // 기본적으로 가로 선
                .background(Color.black) // 선의 색상을 변경
                .frame(height: 1)
                .padding(.horizontal, 24)
            
            VStack (spacing: 12) {
                HStack (spacing: 12){
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 24)
                    
                    Text("좋아요한 작품")
                        .font(.system(size: 13))
                    
                    Spacer()
                }
                HStack (spacing: 12){
                    Image(systemName: "basket")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 24)
                    
                    Text("찜한 작품")
                        .font(.system(size: 13))
                    
                    Spacer()
                }
                HStack (spacing: 12){
                    Image(systemName: "creditcard")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 24)
                    
                    Text("판매 내역")
                        .font(.system(size: 13))
                    
                    Spacer()
                }
                HStack (spacing: 12){
                    Image(systemName: "cart")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 24)
                    
                    Text("구매 내역")
                        .font(.system(size: 13))
                    
                    Spacer()
                }
            }
            .padding(.top, 12)
            
            Spacer()

        }
    }
}

#Preview {
    MyPageView()
}
