//
//  FeedInfoView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/31/24.
//

import SwiftUI

struct FeedInfoView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("작품명")
                    .font(.system(size: 16))
                    .foregroundColor(Color.black)
                    .padding(.leading, 24)
                
                Spacer()
            }
            VStack {
                HStack {
                    TextField("작품명", text: $searchText)
                        .foregroundColor(Color.white)
                        .padding(.leading, 16)
                }
                .padding(10)
                .background(Color(.darkGray))
                .cornerRadius(20)
                .padding(.horizontal, 24)
            }
            
                
            
            
        }
    }
}

#Preview {
    FeedInfoView()
}
