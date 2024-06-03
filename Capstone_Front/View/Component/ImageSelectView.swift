//
//  ImageSelectView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/31/24.
//

import SwiftUI

struct ImageSelectView: View {
    @State private var openPhoto = false
    
    var body: some View {
        Button(action: {
            self.openPhoto = true
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(hex: "3A3532"), Color(hex: "FFFFC1").opacity(0.4)]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 110, height: 110)
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(hex: "D9D9D9").opacity(0.4), lineWidth: 2.5)
                    .frame(width: 110, height: 110)
                
                Image(systemName: "camera.fill")
                    .font(.system(size: 32))
                    .foregroundColor(.white)
            }
        })
        .frame(width: 110, height: 110)
        .background(Color(hex: "3A3532"))
        .cornerRadius(10)
        .sheet(isPresented: $openPhoto, content: {
            ImagePicker(sourceType: .photoLibrary)
        })
    }
}

#Preview {
    ImageSelectView()
}
