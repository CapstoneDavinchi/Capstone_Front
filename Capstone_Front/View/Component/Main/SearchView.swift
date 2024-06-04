//
//  SearchView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var backgroundColor: Color
    var imageColor: Color
    var hasStroke: Bool
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(imageColor)
                    .padding(.leading, 12)
                    .frame(width: 28, height: 20)
                CustomTextField(text: $searchText, placeholder: "search...")
                    .foregroundColor(Color.white)
                    .padding(.leading, 3)
                    .frame(height: 32)
            }
            .padding(10)
            .background(backgroundColor)
            .cornerRadius(20)
            .overlay(
                hasStroke ? RoundedRectangle(cornerRadius: 20).stroke(Color(hex: "3A3532"), lineWidth: 1) : nil
            )
            .padding(.horizontal, 24)
        }
    }
}

#Preview {
    SearchView(backgroundColor: Color(hex: "3A3532"), imageColor: Color.white, hasStroke: false)
}
