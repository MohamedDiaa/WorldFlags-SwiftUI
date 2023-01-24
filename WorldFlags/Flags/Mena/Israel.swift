//
//  Israel.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-24.
//

import SwiftUI

struct Israel: View {
    var body: some View {
        let blue = Color(red: 0.07, green: 0.2, blue: 0.7)

        GeometryReader { geo in
            let frame = geo.frame(in: .local)

            VStack(spacing: 0) {
                blue
                ZStack {
                    GeometryReader { geo in
                        let frame = geo.frame(in: .local)
                        let T: CGFloat = 5.5
                        let radius: CGFloat =  (min(frame.width, frame.height) / 2) - (T * 2)

                        let pts = getPointsOnCircle(radius: radius, origin: frame.center, count: 6, tiltAngle: 25 * .pi / 180)

                        Color.white

                        Path { path in

                            path.move(to: pts[0])
                            path.addLines([
                                pts[2],
                                pts[4],
                                pts[0]
                            ])
                            path.closeSubpath()

                            path.move(to: pts[1])
                            path.addLines([
                                pts[3],
                                pts[5],
                                pts[1]
                            ])
                            path.closeSubpath()

                        }
                        .stroke(lineWidth: T * 2)
                        .foregroundColor(blue)
                    }
                }
                .frame(height: 2 * frame.height / 3)
                blue
            }
        }
    }
}

struct Israel_Previews: PreviewProvider {
    static var previews: some View {
        Israel()
    }
}
