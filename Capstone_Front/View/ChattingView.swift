//
//  ChattingView.swift
//  Capstone_Front
//
//  Created by 최유빈 on 6/7/24.
//

import SwiftUI

struct ChattingView: View {
    @State private var messages: [Chat] = [
        .init(text: "안녕하세요! 작품 보고 문의드립니다.", isCurrentUser: true),
        .init(text: "안녕하세요~ 무슨 문의가 필요하신가요?", isCurrentUser: false),
        .init(text: "혹시 만드시는데 얼마나걸렸나요?!", isCurrentUser: true)
    ]
    @State private var messageText = ""
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(messages, id: \.text) { message in
                        HStack {
                            if message.isCurrentUser {
                                Spacer()
                                Text(message.text)
                                    .padding()
                                    .font(.system(size: 10))
                                    .background(Color.gray.opacity(0.5))
                                    .cornerRadius(12)
                                    .foregroundColor(.white)
                            } else {
                                Text(message.text)
                                    .padding()
                                    .font(.system(size: 10))
                                    .background(Color.blue)
                                    .cornerRadius(12)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }
                    }
                }
                .padding()
            }
                
            HStack {
                TextField("메시지 보내기", text: $messageText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(minHeight: CGFloat(30))
                
                Button(action: sendMessage) {
                    Text("보내기")
                }
            }
            .padding()
        }
        .navigationBarHidden(true)
//        .navigationBarTitle("Chat", displayMode: .inline)
    }
        
    func sendMessage() {
        let newMessage = Chat(text: messageText, isCurrentUser: true)
        messages.append(newMessage)
        messageText = ""
    }
}

#Preview {
    ChattingView()
}
