//
//  Honduras.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-23.
//

import SwiftUI

struct Honduras: View {
    var body: some View {
        let  turquoise = Color(red: 0.33, green: 0.73, blue: 0.88)

        VStack {
            turquoise
            Color.white
            turquoise
        }
        .overlay {
            GeometryReader { geometry in
                let frame = geometry.frame(in: .local)
                let stripeHeight = frame.height / 3
                let rect = frame.insetBy(dx: frame.width / 3 , dy: stripeHeight + stripeHeight / 3)

                let pts = [
                    rect.origin,
                    CGPoint(x: rect.minX, y: rect.maxY),
                    CGPoint(x: rect.maxX, y: rect.maxY),
                    CGPoint(x: rect.maxX, y: rect.minY),
                    CGPoint(x: rect.midX, y: rect.midY)
                ]

                ZStack {
                    ForEach(pts, id: \.self) { pt in
                        StarShape()
                            .foregroundColor(turquoise)
                            .frame(width: 30)
                            .position(pt)
                    }
                }
            }
        }
    }
}

struct Honduras_Previews: PreviewProvider {
    static var previews: some View {
        Honduras()
    }
}
