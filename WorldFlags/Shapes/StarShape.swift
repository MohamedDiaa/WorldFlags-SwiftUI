//
//  StarTest.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-18.
//
//  {(𝑟cos(2𝜋𝑘/5+𝜋/2),𝑟sin(2𝜋𝑘/5+𝜋/2))∣𝑘=0,..
// https://math.stackexchange.com/questions/3582342/coordinates-of-the-vertices-of-a-five-pointed-star/3582355#3582355
import SwiftUI
import Numerics

struct StarShape: Shape {

    func path(in rect: CGRect) -> Path {

        let pi =  Double.pi
        var path = Path()

        let bigCircleRadius = min(rect.width, rect.height) / 2
        for k in 0...5 {

            for j in 0...1 {

                let r = [
                    bigCircleRadius,
                    bigCircleRadius / 2.5
                ]
                let cparam = (2 * pi * Double(k) / 5) + (pi / 2)
                let angleShift =   pi + (2 * pi / 10.0) * Double(j)
                let x = r[j] * cos(cparam + angleShift)
                let sparam = (2 * pi * Double(k) / 5) + (pi / 2)
                let y = r[j] * sin(sparam + angleShift)
                let pt = CGPoint(x: x + rect.midX, y: y + rect.midY)

                if k == 0 {
                    path.move(to: pt)
                }
                else {
                    path.addLine(to: pt)
                }
            }
        }
        return path
    }
}

struct StarTest: View {
    var body: some View {

        StarShape()
            .foregroundColor(.yellow)
            .frame(width: 100, height: 100)
            .border(.blue)
           // .clipped()
    }
}

struct StarTest_Previews: PreviewProvider {
    static var previews: some View {
        StarTest()
    }
}
