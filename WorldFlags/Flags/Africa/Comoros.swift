//
//  Comoros.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-26.
//

import SwiftUI

struct Comoros: View {

    var body: some View {
        let golden = Color(red: 0.97, green: 0.83, blue: 0.28)
        let red = Color(red: 0.86, green: 0.26, blue: 0.27)
        let blue = Color(red: 0.08, green: 0.22, blue: 0.63)
        let green = Color(red: 0.26, green: 0.58, blue: 0.26)

        GeometryReader { geo in
            let frame = geo.frame(in: .local)

            ZStack {

                VStack(spacing: 0) {
                    golden
                    Color.white
                    red
                    blue
                }

                Path { path in

                    path.move(to: frame.origin)
                    path.addLines([
                        .init(x: frame.midX , y: frame.midY),
                        .init(x: frame.origin.x, y: frame.maxY),
                        frame.origin])
                }
                .fill(green)
                .overlay {

                    ZStack {
                        ComorosCrescent()

                        VStack(spacing: 10) {
                            StarShape()
                                .frame(width: 30)
                                .foregroundColor(.white)
                            StarShape()
                                .frame(width: 30)
                                .foregroundColor(.white)

                            StarShape()
                                .frame(width: 30)
                                .foregroundColor(.white)

                            StarShape()
                                .frame(width: 30)
                                .foregroundColor(.white)
                        }
                        .frame(height: 120 + 40)
                        .offset(x: 25)
                    }
                    .position(.init(x: 120, y: frame.midY))
                }
            }
        }
    }

    @ViewBuilder
    private func ComorosCrescent() -> some View {
        GeometryReader { geo in
            let frame = geo.frame(in: .local)
            let width: CGFloat = 220

            ZStack {

                Circle()
                    .foregroundColor(.white)
                    .frame(width: width)
                    .position(frame.center)
                Circle()
                    .frame(width: width)
                    .position(frame.center)
                    .offset(x: 50)
                    .blendMode(.destinationOut)

            }
            .compositingGroup()
        }
    }
}

struct Comoros_Previews: PreviewProvider {
    static var previews: some View {
        Comoros()
    }
}
