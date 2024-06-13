//
//  ProfileImageSelectView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/12/24.
//

import SwiftUI

struct ProfileImageSelectView: View {
    @State private var openPhoto = false
    @State private var image: UIImage?
    
    var body: some View {
        Button(action: {
            self.openPhoto = true
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hex: "000000").opacity(0.7))
                
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(Color(hex: "3A3532").opacity(0.3), lineWidth: 2.5)
//                    .frame(width: 110, height: 110)
                
                Image("ProfileImageSelect")
                    .opacity(0.7)
                
                Image(systemName: "photo.fill")
                    .font(.system(size: 27))
                    .foregroundColor(Color(hex: "D9D9D9"))
            }
        })
        .frame(width: 170, height: 170)
        .background(Color(hex: "000000"))
        .cornerRadius(10)
        .sheet(isPresented: $openPhoto, content: {
            ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
        })
    }
}

#Preview {
    ProfileImageSelectView()
}
