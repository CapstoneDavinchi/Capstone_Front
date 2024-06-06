//
//  CustomTextEditor.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/3/24.
//

import SwiftUI

struct CustomMultiLineTextField: UIViewRepresentable {
    @Binding var text: String
    var placeholder: String
    var textColor: UIColor

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.backgroundColor = .clear
        textView.delegate = context.coordinator
        
        // Placeholder 초기 설정
        if text.isEmpty {
            textView.text = placeholder
            textView.textColor = textColor // Placeholder 텍스트 색상을 흰색으로 설정
        } else {
            textView.text = text
            textView.textColor = textColor
        }
        
        textView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10)


        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        // Text가 업데이트 될 때 뷰 업데이트 로직
        if text.isEmpty {
            uiView.text = placeholder
            uiView.textColor = textColor
        } else {
            uiView.text = text
            uiView.textColor = textColor
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self, placeholder: placeholder, placeHoldercolor: textColor)
    }

    class Coordinator: NSObject, UITextViewDelegate {
        var parent: CustomMultiLineTextField
        var placeholder: String
        var placeHoldercolor: UIColor

        init(_ parent: CustomMultiLineTextField, placeholder: String, placeHoldercolor: UIColor) {
            self.parent = parent
            self.placeholder = placeholder
            self.placeHoldercolor = placeHoldercolor
        }

        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }

        func textViewDidBeginEditing(_ textView: UITextView) {
            if textView.text == placeholder {
                textView.text = nil
                textView.textColor = placeHoldercolor // 사용자 입력 텍스트 색상
            }
        }

        func textViewDidEndEditing(_ textView: UITextView) {
            if textView.text.isEmpty {
                textView.text = placeholder
                textView.textColor = placeHoldercolor // Placeholder 텍스트 색상 유지
            }
        }
    }
}


