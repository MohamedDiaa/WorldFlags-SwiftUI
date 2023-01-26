//
//  CrescentShape.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-26.
//

import SwiftUI

struct CrescentShape: View {

    let cresentColor: Color

    var body: some View {

        GeometryReader { geo in
            let frame = geo.frame(in: .local)

            ZStack {

                Circle()
                    .foregroundColor(cresentColor)
                    .frame(width: 200)
                    .position(frame.center)
                Circle()
//                    .foregroundColor(.white)
                    .frame(width: 150)
                    .position(frame.center)
                    .offset(x: 30)
                    .blendMode(.destinationOut)

            }
            .compositingGroup()

        }
    }
}

struct CrescentShape_Previews: PreviewProvider {
    static var previews: some View {
        CrescentShape(cresentColor: .green)
    }
}
