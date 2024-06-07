//
//  PersonalPage.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/9/24.
//

import SwiftUI

struct PersonalPage: View {
    @ObservedObject var tabviewModel = TabBarViewModel()
    @Binding var showBottomNavBar: Bool
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                
                VStack(spacing: 0) {
                    TabBarView(currentBackgroundColor: Color.black, showBottomNavBar: $showBottomNavBar)
                        .environmentObject(tabviewModel)
                    
                    ImageScrollView()
                        .frame(height: 300)
                    
                    ImageDetailView()
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        // UploadButton을 NavigationLink로 감싸 이동하도록 설정
                        NavigationLink(destination: ImageUploadView(showBottomNavBar: $showBottomNavBar).environmentObject(tabviewModel)) {
                            UploadButton(showBottomNavBar: $showBottomNavBar)
                        }
                        .padding(.trailing, 24)
                    }
                }
            }
        }.navigationBarHidden(true) // Navigation bar 숨기기
    }
}




#Preview {
    PersonalPage(tabviewModel: TabBarViewModel(), showBottomNavBar: .constant(false))
}
