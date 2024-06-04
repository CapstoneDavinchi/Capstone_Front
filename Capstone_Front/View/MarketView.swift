//
//  MarketView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/4/24.
//

import SwiftUI

struct MarketView: View {
    var body: some View {
        ZStack {
            VStack {
                SearchView(backgroundColor: Color.clear, imageColor: Color(hex: "292929"), hasStroke: true)
            }
        }
    }
}

#Preview {
    MarketView()
}
