//
//  Triangle.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-11.
//

import SwiftUI

struct Triangle: Shape {

    func path(in rect: CGRect) -> Path {

        let pt1 = CGPoint(x: rect.midX, y: 0)
        let pt2 = CGPoint(x: 0, y: rect.maxY)
        let pt3 = CGPoint(x: rect.maxX, y: rect.maxY)

        var path = Path()
        path.move(to: pt1)
        path.addLine(to: pt2)
        path.addLine(to: pt3)
        path.closeSubpath()

        return path
    }
}

struct TriangleView: View {
    var body: some View {

        HStack {
            ForEach(0...10, id: \.self) { _ in
                VStack {
                    ForEach(0...100, id: \.self) { element in

                        Triangle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct Triangle_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
