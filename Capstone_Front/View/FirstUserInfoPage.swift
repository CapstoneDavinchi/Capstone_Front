//
//  FirstUserInfoPage.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/12/24.
//

import SwiftUI

struct FirstUserInfoPage: View {
    @StateObject private var tabBarViewModel = TabBarViewModel()
    @State private var nicknameText = ""
    @State private var showSecondUserInfoPage = false
    @State private var checkDuplicate = false
        
    var body: some View {
        ZStack {
            Image("UserInfoBack")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("사용하실 닉네임과 프로필을 설정해주세요")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.leading, 24)
                    
                    Spacer()
                }
                .padding(.top, 50)
                
                ProfileImageSelectView(tabBarViewModel: tabBarViewModel)
                    .padding(.top, 60)
                
                HStack (spacing: 16) {
                    CustomTextField(text: $nicknameText, placeholder: "닉네임 설정", foregroundColor: UIColor(Color.white))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 0.7)
                        )
                        .frame(height: 40)
                        .padding(.leading, 24)
                    
                    
                    Button(action: {
                        self.checkDuplicate = true
                    }, label: {
                        HStack {
                            Text("중복 체크")
                                .font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        .frame(height: 20) // 높이 설정
                        .padding(.horizontal, 10) // 좌우 패딩
                        .background(Color(hex: "D9D9D9")) // 배경색
                        .cornerRadius(10) // 모서리 둥글게
                    })
                    .padding(.trailing, 24)
                    

                }
                .padding(.top, 40)
                
                HStack {
                    if checkDuplicate {
                        Text("사용 가능한 닉네임입니다.")
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                            .padding(.leading, 30)
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    self.showSecondUserInfoPage = true
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
                .fullScreenCover(isPresented: $showSecondUserInfoPage) {
                    SecondUserInfoPage()
                }
            }
        }
    }
}

#Preview {
    FirstUserInfoPage()
}
