//
//  CongruentTriangle.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

import SwiftUI

struct CongruentTriangleShape: Shape {
    func path(in rect: CGRect) -> Path {

       return Path { path in
           path.move(to: rect.origin)
            path.addLines(
                [CGPoint(x: rect.maxX, y: 0),
                 CGPoint(x: 0, y: rect.maxY),
                 rect.origin
                ]
            )
        }
    }
}
struct CongruentTriangle: View {
    var body: some View {

        ZStack {
            CongruentTriangleShape()
                .foregroundColor(.red)
        }
    }
}

struct CongruentTriangle_Previews: PreviewProvider {
    static var previews: some View {
        CongruentTriangle()
    }
}
