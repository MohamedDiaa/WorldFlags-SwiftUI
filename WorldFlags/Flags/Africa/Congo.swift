//
//  Congo.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

// Democratic Republic of the Congo
import SwiftUI

struct Congo: View {
    var body: some View {
        let blue = Color(red: 0.22, green: 0.49, blue: 0.97)
        let red = Color(red: 0.75, green: 0.16, blue: 0.16)
        let yellow = Color(red: 0.95, green: 0.85, blue: 0.29)

        ZStack {

            GeometryReader { geometry in

                blue
                    .overlay {
                        StarShape()
                            .foregroundColor(yellow)
                            .frame(width: 150)
                            .position(CGPoint(x: 140, y: 100))
                    }

                let opposite = geometry.size.width / 2.0
                let adjacent = geometry.size.height / 2.0
                let angle = atan(opposite / adjacent)

                ZStack {
                    yellow
                        .mask {
                            ZStack {
                                Rectangle()
                                    .frame(width: 30)
                                    .offset(CGSize(width: 40, height: 0))

                                Rectangle()
                                    .frame(width: 30)
                                    .offset(CGSize(width: -40, height: 0))

                            }
                        }
                    red
                        .mask {
                            ZStack {
                                Rectangle()
                                    .frame(width: 60)
                            }
                        }
                }
                .scaleEffect(y: 2.4)
                .rotationEffect(Angle(radians: angle))
            }
        }
    }
}

struct Congo_Previews: PreviewProvider {
    static var previews: some View {
        Congo()
    }
}
