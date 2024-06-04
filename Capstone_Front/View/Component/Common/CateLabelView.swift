//
//  CateLabelView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/23/24.
//

import SwiftUI

struct CateLabelView: View {
    var category: String
    var body: some View {
        Text(category)
            .font(.system(size: 11))
            .foregroundColor(Color.white)
            .padding(.horizontal, 20)
            .frame(height: 30)
            .background(Color.clear)
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.white, lineWidth: 1)
            )
    }
}
