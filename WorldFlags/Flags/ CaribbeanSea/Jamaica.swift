//
//  Jamaica.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-24.
//

import SwiftUI

struct Jamaica: View {
    var body: some View {
        let golden = Color(red: 0.96, green: 0.74, blue: 0.27)
        let green = Color(red: 0.20, green: 0.46, blue: 0.3)

        ZStack {

            green

            GeometryReader { geo in

                let frame = geo.frame(in: .local)
                let opposite = frame.width
                let adjacent = frame.height

                let angle = atan(opposite / adjacent)
                let diagonal = sqrt(opposite * opposite + adjacent * adjacent )


                Color.black
                    .mask {
                        ZStack{
                            drawTriangle(frame: frame)
                                .rotationEffect(Angle(radians: .pi))
                               drawTriangle(frame: frame)
                            }
                    }

                golden
                    .mask {
                        ZStack {
                            Rectangle()
                                .frame(width: 40, height: diagonal)
                                .rotationEffect(Angle(radians: angle))

                            Rectangle()
                                .frame(width: 40, height: diagonal)
                                .rotationEffect(Angle(radians: -angle))

                        }
                    }
            }
        }
    }

    @ViewBuilder
    private func drawTriangle(frame: CGRect) -> some View{

        Path {path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLines(
                [CGPoint(x: frame.midX, y: frame.midY),
                 CGPoint(x: frame.minX, y: frame.maxY),
                 CGPoint(x: frame.minX, y: frame.minY)
                 ])
        }
    }
}

struct Jamaica_Previews: PreviewProvider {
    static var previews: some View {
        Jamaica()
    }
}
