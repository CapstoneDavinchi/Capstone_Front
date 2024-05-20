//
//  PersonalPage.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/9/24.
//

import SwiftUI

struct PersonalPage: View {
    @State private var selectedPage = 0
    @StateObject var tabviewModel = TabBarViewModel()
    
    var body: some View {
        ZStack {
            Color(Color.black).ignoresSafeArea()
            VStack(spacing: 0) {
                TabBarView()
                    .environmentObject(tabviewModel)
                
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
                Spacer()
            }
            Text("d")
        }
    }
}

struct SnapToCenterModifier: ViewModifier {
    @Binding var selectedPage: Int
    var itemWidth: CGFloat
    var totalItems: Int
    var screenWidth: CGFloat
    @GestureState private var dragState = DragState.inactive
    
    func body(content: Content) -> some View {
        content
            .offset(x: CGFloat(selectedPage) * -(itemWidth) + screenWidth / 2 - itemWidth / 2 + dragState.translation.width)
            .gesture(
                DragGesture()
                    .updating($dragState) { drag, state, _ in
                        state = .dragging(translation: drag.translation)
                    }
                    .onEnded { drag in
                        let predictedEndOffset = drag.predictedEndTranslation.width + CGFloat(selectedPage) * -itemWidth
                        let predictedIndex = -Int(predictedEndOffset / itemWidth)
                        selectedPage = max(0, min(totalItems - 1, predictedIndex))
                    }
            )
    }
    enum DragState {
        case inactive
        case dragging(translation: CGSize)
        
        var translation: CGSize {
            switch self {
            case .inactive:
                return .zero
            case .dragging(let translation):
                return translation
            }
        }
        
        var isDragging: Bool {
            switch self {
            case .inactive:
                return false
            case .dragging:
                return true
            }
        }
    }
}

extension View {
    func snapToCenter(selectedPage: Binding<Int>, itemWidth: CGFloat, totalItems: Int, screenWidth: CGFloat) -> some View {
        self.modifier(SnapToCenterModifier(selectedPage: selectedPage, itemWidth: itemWidth, totalItems: totalItems, screenWidth: screenWidth))
    }
}

#Preview {
    PersonalPage()
}
