//
//  United_Arab_Emirates .swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-26.
//

import SwiftUI

struct United_Arab_Emirates_: View {
    var body: some View {
        let green = Color(red: 0.19, green: 0.45, blue: 0.2)
        let red = Color(red: 0.92, green: 0.2, blue: 0.14)

        ZStack {
            VStack(spacing: 0) {
                green
                Color.white
                Color.black
            }

            let rectangleWidth: CGFloat = 150
            GeometryReader { geo in

                Rectangle()
                    .frame(width: rectangleWidth)
                    .foregroundColor(red)
                    .position(.init(x: rectangleWidth / 2, y: geo.size.height / 2))
            }
        }
    }
}

struct United_Arab_Emirates__Previews: PreviewProvider {
    static var previews: some View {
        United_Arab_Emirates_()
    }
}
