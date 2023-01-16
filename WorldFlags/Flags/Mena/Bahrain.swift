//
//  Bahrain.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-16.
//

import SwiftUI

//https://en.wikipedia.org/wiki/Flag_of_Bahrain

struct TrianglePillar: Shape {

    func path(in rect: CGRect) -> Path {

        let pt0 = CGPoint(x: rect.midX, y: 0)
        let pt1 = CGPoint(x: 0, y: rect.maxY)
        let pt2 = CGPoint(x: rect.maxX, y: rect.maxY)

        var path = Path()
        path.move(to: pt0)
        path.addLines([pt1, pt2, pt0])
        return path
    }
}

struct Bahrain: View {
    let red = Color(red: 0.75, green: 0.16, blue: 0.17)
    var body: some View {

        GeometryReader { geometry in

            ZStack(alignment: .leading) {
                HStack {
                    Color.white
                        .frame(width: 0.32 * geometry.size.width)
                    red
                }

                let pillarHeight = geometry.size.height / 5.0
                VStack(spacing: 0) {
                    TrianglePillar()
                        .rotationEffect(Angle(degrees: 90))
                    TrianglePillar()
                        .rotationEffect(Angle(degrees: 90))

                    TrianglePillar()
                        .rotationEffect(Angle(degrees: 90))

                    TrianglePillar()
                        .rotationEffect(Angle(degrees: 90))
                    TrianglePillar()
                        .rotationEffect(Angle(degrees: 90))
                }
                .foregroundColor(.white)
                .frame(width: pillarHeight)
                .offset(x: 0.32 * geometry.size.width + 7)

                
            }
        }
    }
}

struct Bahrain_Previews: PreviewProvider {
    static var previews: some View {
        Bahrain()
    }
}
