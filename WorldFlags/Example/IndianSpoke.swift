//
//  IndianSpoke.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-23.
//

import SwiftUI

struct IndianSpoke: View {
    var body: some View {

        Path { path in

            let pt: CGPoint = .init(x:0, y: 4)
            let points: [CGPoint] =
            [.init(x: 1.4, y: 16),
              .init(x: 0, y: 42),
              .init(x: -1.4, y: 16),
             pt
            ]

            path.move(to: pt)
            path.addLines(points)
        }
        .stroke(lineWidth: 3)
        .foregroundColor(.red)
        .position(CGPoint(x: 100, y: 100))

    }
}

struct IndianSpoke_Previews: PreviewProvider {
    static var previews: some View {
        IndianSpoke()
    }
}
