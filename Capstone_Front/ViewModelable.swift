//
//  ViewModelable.swift
//  Capstone_Front
//
//  Created by 최유빈 on 4/30/24.
//

import SwiftUI
import Combine

protocol ViewModelable: ObservableObject {
    associatedtype Action
    associatedtype State
    
    var state: State { get }
    
    func action(_action: Action)
}
