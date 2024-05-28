//
//  PersonalPage.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/9/24.
//

import SwiftUI

struct PersonalPage: View {
    @State private var selectedPage = 0
    @ObservedObject var tabviewModel = TabBarViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(Color.black).ignoresSafeArea()
                
                VStack(spacing: 0) {
                    TabBarView()
                        .environmentObject(tabviewModel)
                    
                    ImageScrollView()
                        .frame(height: 300)
                    
                    ImageDetailView()
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        UploadButton()
                            .padding(.trailing, 24)
                    }
                }
            }
        }.navigationBarHidden(true)
    }
}




#Preview {
    PersonalPage(tabviewModel: TabBarViewModel())
}
