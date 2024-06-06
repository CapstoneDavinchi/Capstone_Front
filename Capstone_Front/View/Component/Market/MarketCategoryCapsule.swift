//
//  MarketCategoryCapsule.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/6/24.
//

import SwiftUI

struct MarketCategoryCapsule: View {
    var category: String
    @State private var isSelected = false
    
    var body: some View {
        Button(action: {
            print("카테고리 선택")
            isSelected.toggle()
        }, label: {
            Text(category)
                .font(.system(size: 11))
                .foregroundColor(isSelected ? Color.white : Color(hex: "999999")) // 선택 상태에 따라 글자색 변경
                .padding(.vertical, 10)
                .padding(.horizontal)
                .frame(width: 100)
                .background(isSelected ? Color(hex: "3A3532") : Color.clear) // 선택 상태에 따라 배경색 변경
                .clipShape(Capsule())
                .overlay {
                    Capsule().stroke(Color(hex: "999999"), lineWidth: 1)
                }
        })
    }
}

#Preview {
    MarketCategoryCapsule(category: "수목화")
}
