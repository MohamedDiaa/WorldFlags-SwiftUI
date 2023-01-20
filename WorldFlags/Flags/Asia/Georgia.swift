//
//  Georgia.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-20.
//

import SwiftUI

struct Georgia: View {
    var body: some View {

        GeometryReader { geometry in
            let frame = geometry.frame(in: .local)

            ZStack {

                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 60)

                Rectangle()
                    .foregroundColor(.red)
                    .frame(height: 60)
            }
            .position(CGPoint(x: frame.midX, y: frame.midY))

            let pts = [
                CGPoint(x: frame.width / 4 , y: frame.height / 4),
                CGPoint(x: 3 * frame.width / 4 , y: frame.height / 4),
                CGPoint(x: frame.width / 4 , y: 3 * frame.height / 4),
                CGPoint(x: 3 * frame.width / 4 , y: 3 * frame.height / 4)
            ]

            ForEach(pts, id: \.self) { pt in

                ZStack {

                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width: 30, height: 100)

                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width: 100, height: 30)
                }
                .position(pt)

            }
        }
    }
}

struct Georgia_Previews: PreviewProvider {
    static var previews: some View {
        Georgia()
    }
}
