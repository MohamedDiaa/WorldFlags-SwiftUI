//
//  Scotland.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-16.
//

import SwiftUI

struct Scotland: View {
    let blue = Color(red: 0.15, green: 0.36, blue: 0.70)
    var body: some View {

        GeometryReader { geometry in

            let width = geometry.size.width
            let height = geometry.size.height

            ZStack {
                blue

                Rectangle()
                    .foregroundColor(.white)
                    .frame(maxHeight: .infinity)
                    .frame(width: 60)
                    .rotationEffect(Angle(degrees: 30))


                Rectangle()
                    .foregroundColor(.white)
                    .frame(maxHeight: .infinity)
                    .frame(width: 60)
                    .rotationEffect(Angle(degrees: -30))

            }
        }
    }
}

struct Scotland_Previews: PreviewProvider {
    static var previews: some View {
        Scotland()
    }
}
