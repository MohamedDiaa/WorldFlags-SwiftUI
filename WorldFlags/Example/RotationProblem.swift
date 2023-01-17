//
//  RotationProblem.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-17.
//

import SwiftUI

struct RotationProblem: View {
    var body: some View {

        GeometryReader { geometry in

            let height: CGFloat = geometry.size.height * 2
            ZStack {
                Color.blue

                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 60, height: height)
                    .offset(y: -height / 2.0)
                    .rotationEffect(Angle(degrees: 30), anchor: .center)

            }
        }
    }
}

struct RotationProblem_Previews: PreviewProvider {
    static var previews: some View {
        RotationProblem()
    }
}
