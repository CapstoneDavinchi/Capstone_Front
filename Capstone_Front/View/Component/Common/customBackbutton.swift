//
//  customBackbutton.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/7/24.
//

import SwiftUI

struct customBackbutton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var action: (() -> Void)? = nil
    var buttoncolor: Color
    
    var body: some View {
            ZStack {
                Button{
                    self.presentationMode.wrappedValue.dismiss()
                    self.action?()
                } label: {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 7, height: 13)
                        .foregroundColor(buttoncolor)
                }
            }
            .frame(width: 32, height: 32)
        }
}

//#Preview {
//    customBackbutton(buttoncolor: Color.black)
//}
