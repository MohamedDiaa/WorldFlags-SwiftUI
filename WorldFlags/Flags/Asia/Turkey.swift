//
//  Turkey.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-26.
//

import SwiftUI

struct Turkey: View {
    var body: some View {

        let red = Color(red: 0.82, green: 0.18, blue: 0.16)

        ZStack {
            red
            CrescentShape(cresentColor: .white)
                .border(.black)
                .overlay {
                    StarShape()
                        .foregroundColor(.white)
                        .rotationEffect(Angle(degrees: -20))
                        .frame(width: 100)
                        .offset(x: 130)
                }
        }
    }
}

struct Turkey_Previews: PreviewProvider {
    static var previews: some View {
        Turkey()
    }
}
