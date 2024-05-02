//
//  TabBarViewModel.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/3/24.
//

import Combine
import SwiftUI

class TabBarViewModel: ObservableObject {
    @Published var showMenu: Bool = false // 카테고리 메뉴 표시여부임.
}
