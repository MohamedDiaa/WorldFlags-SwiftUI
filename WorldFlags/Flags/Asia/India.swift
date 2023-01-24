//
//  India.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-13.
//

import SwiftUI

// Refrence
// https://nelkinda.com/blog/svg-flag-of-india/
struct AshokaChakraRay: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in

        }
    }
}

struct India: View {
    let blue = Color(red: 0, green: 0, blue: 0.51)
    var body: some View {

        GeometryReader { geometry in

            let frame = geometry.frame(in: .local)
            // Configureable
            let rect = 92.0 //4 * min( frame.width, frame.height) / 5
            let rimWidth = 6.0

            // Calculated
            let rimRadius = (rect / 2.0) - (rimWidth / 2)
            let hubRadius = rimRadius / 5

            Circle()
                .stroke(lineWidth: rimWidth)
                .frame(width: rimRadius * 2)
                .position(CGPoint(x: frame.midX, y: frame.midY))
                .overlay {

                    ZStack {
                        Circle()
                            .frame(width: hubRadius)

//                        ForEach(0...24, id: \.self){ index in
//                            Circle()
//                                .frame(width: 8)
//                                .position(CGPoint(x: frame.midX, y: frame.midY + rimRadius - rimWidth))
//                                .rotationEffect(Angle(degrees: 15.0 * CGFloat(index)))
//
//
//                        }
                        Path { path in

                            let pt: CGPoint = .init(x:frame.midX, y: 0)
                            let points: [CGPoint] =
                            [.init(x: frame.midX, y: frame.maxY)
                            ]

                            path.move(to: pt)
                            path.addLines(points)
                        }
                        .stroke(.red, style: StrokeStyle(lineWidth: 3))
                        .foregroundColor(.red)
                    }
                }

        }
    }
}


//struct India: View {
//    let blue = Color(red: 0, green: 0, blue: 0.51)
//    var body: some View {
//
//        ZStack {
//
//            VStack {
//                Color.orange
//                Color.white
//                Color.green
//            }
//
//            Circle()
//                .foregroundColor(blue)
//                .frame(width: 200, height: 200)
//            Circle()
//                .foregroundColor(.white)
//                .frame(width: 170, height: 170)
//
//            Circle()
//                .foregroundColor(blue)
//                .frame(width: 40, height: 40)
//
//            Rectangle()
//                .frame(width: 10, height: 70)
//                .rotationEffect(Angle(degrees: 50))
//                .offset(x: 0 , y: -30 )
//                .foregroundColor(blue)
//        }
//    }
//}

struct India_Previews: PreviewProvider {
    static var previews: some View {
        India()
    }
}
