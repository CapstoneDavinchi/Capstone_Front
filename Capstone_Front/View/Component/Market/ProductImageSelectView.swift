//
//  ProductImageSelectView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/6/24.
//

import SwiftUI

struct ProductImageSelectView: View {
    @State private var openPhoto = false
    
    var body: some View {
        Button(action: {
            self.openPhoto = true
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.clear, Color(hex: "466C64").opacity(0.3)]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 110, height: 110)
                
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(Color(hex: "3A3532").opacity(0.3), lineWidth: 2.5)
//                    .frame(width: 110, height: 110)
                
                Image(systemName: "camera.fill")
                    .font(.system(size: 32))
                    .foregroundColor(.black)
            }
        })
        .frame(width: 110, height: 110)
        .background(Color(hex: "FFF6EE"))
        .cornerRadius(10)
        .sheet(isPresented: $openPhoto, content: {
            ImagePicker(sourceType: .photoLibrary)
        })
    }
}

#Preview {
    ProductImageSelectView()
}
