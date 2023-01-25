//
//  Czechia.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-25.
//

import SwiftUI

struct Czechia: View {
    var body: some View {
        let blue = Color(red: 0.11, green: 0.26, blue: 0.48)
        let red = Color(red: 0.78, green: 0.18, blue: 0.14)

        GeometryReader { geo in
            let frame = geo.frame(in: .local)

            ZStack {
                VStack(spacing: 0) {
                    Color.white
                    red
                }

                Path { path in

                    path.move(to: frame.origin)
                    path.addLines([
                        .init(x: frame.width * 1 / 3, y: frame.midY),
                        .init(x: frame.origin.x, y: frame.maxY),
                        frame.origin
                    ])
                    path.closeSubpath()
                }
                .fill(blue)
            }
        }
    }
}

struct Czechia_Previews: PreviewProvider {
    static var previews: some View {
        Czechia()
    }
}
