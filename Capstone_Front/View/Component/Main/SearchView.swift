//
//  SearchView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .foregroundColor(.white)
                    .padding(.leading, 12)
                    .frame(width: 28, height: 20)
                TextField("search...", text: $searchText)
                    .foregroundColor(Color.white)
                    .padding(.leading, 3)
            }
            .padding(10)
            .background(Color(.darkGray))
            .cornerRadius(20)
            .padding(.horizontal, 24)
        }
    }
}

#Preview {
    SearchView()
}
