//
//  PersonalPageView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/9/24.
//

import SwiftUI

struct PersonalPageWork: View {
    var body: some View {
        ZStack {
            Color(Color.black).ignoresSafeArea()
            // 이미지에 사용자 정의 모양을 적용합니다.
            Image("ArtWork") // 이미지명을 실제 이미지의 이름으로 변경하세요.
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 250)
                .clipShape(AlbumShape())
        }
    }
}

#Preview {
    PersonalPageWork()
}
