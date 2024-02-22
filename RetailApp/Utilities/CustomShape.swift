//
//  CustomShape.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 22/02/24.
//

import SwiftUI

struct CustomShape: Shape {

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topRight, .topLeft, .bottomLeft], cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
}

#Preview {
    CustomShape()
        .padding()
}
