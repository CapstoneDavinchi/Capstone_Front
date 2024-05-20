//
//  AlbumShape.swift
//  Capstone_Front
//
//  Created by 최유빈 on 5/9/24.
//

import SwiftUI

struct AlbumShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + rect.height / 2))
        path.addArc(center: CGPoint(x: rect.midX, y:rect.minY + rect.height / 2), radius: rect.width / 2, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 0), clockwise: false)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        return path
    }
}
