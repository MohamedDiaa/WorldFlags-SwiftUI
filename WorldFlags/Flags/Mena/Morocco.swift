//
//  Morocco.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-09.
//

import SwiftUI

struct MorocooStar: Shape {

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

struct Morocco: View {
    var body: some View {

        ZStack {
            Color.red

//            Image(systemName: "star")
//                .font(.system(size: 200))
//                .foregroundColor(.green)

            MorocooStar()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)


        }
    }
}

struct Morocco_Previews: PreviewProvider {
    static var previews: some View {
        Morocco()
    }
}
