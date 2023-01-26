//
//  Morocco.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-09.
//

import SwiftUI

struct Morocco: View {
    var body: some View {
        let red = Color(red: 0.7, green: 0.2, blue: 0.19)
        let green = Color(red: 0.16, green: 0.38, blue: 0.21)

        ZStack {
            red
            PentagramShape()
                .stroke(green, lineWidth: 13)
                .frame(width: 100)
                .rotationEffect(Angle(radians: .pi))
        }
    }
}

struct Morocco_Previews: PreviewProvider {
    static var previews: some View {
        Morocco()
    }
}
