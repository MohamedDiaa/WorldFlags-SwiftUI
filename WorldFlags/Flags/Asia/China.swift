//
//  China.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-25.
//

import SwiftUI
import Numerics

struct China: View {
    var body: some View {
        let red = Color(red: 0.86, green: 0.22, blue: 0.2)

        ZStack {
            GeometryReader { geo in

                let frame = geo.frame(in: .local)
                let width = max(frame.width / 3, min(200, frame.width / 2))
                let newFrame = CGRect(x: 0, y: 0, width: width, height: width)

                red
                    .overlay {
                        StarShape()
                            .foregroundColor(.yellow)
                            .frame(width: 2 * newFrame.width / 5)
                            .position(newFrame.center)

                        Stars(frame: newFrame)
                    }
            }
        }
    }

    @ViewBuilder
    private func Stars(frame: CGRect) -> some View {

        ZStack {
            ForEach(0...3, id: \.self) { index in
                let smallStarWidth: CGFloat = 40
                let radius: CGFloat = frame.width / 2  - (smallStarWidth / 2)
                let angle = Angle(degrees: Double (40 * index) - 60).radians
                let x = radius * cos(angle)
                let y = radius * sin(angle)

                StarShape()
                    .foregroundColor(.yellow)
                    .frame(width: smallStarWidth)
                    .position(x: x + frame.midX, y: y + frame.midY)
            }
        }
    }
}

struct China_Previews: PreviewProvider {
    static var previews: some View {
        China()
    }
}
