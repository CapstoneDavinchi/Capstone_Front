//
//  ImageScrollView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/22/24.
//

import SwiftUI

struct ImageScrollView: View {
    var body: some View {
        GeometryReader { geometry in
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 50) {
                    ForEach(0..<10) { index in
                        PersonalPageWork()
                            .frame(width: 200, height: 270)
                            .clipShape(AlbumShape())
                            .overlay(
                                AlbumShape()
                                    .stroke(Color.white, lineWidth: 0.5)
                            )
                            .id(index)
                            .padding(.leading, index == 0 ? geometry.size.width / 2 - 100 : 0)
                            .padding(.trailing, index == 9 ? geometry.size.width / 2 - 100 : 0)
                    }
                }
            }
            .frame(height: 270)
        }
    }
}

#Preview {
    ImageScrollView()
}
