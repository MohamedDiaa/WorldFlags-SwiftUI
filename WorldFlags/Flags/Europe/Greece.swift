//
//  Greece.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-23.
//

import SwiftUI

struct Greece: View {
    let blue = Color(red: 0.16, green: 0.36, blue: 0.67)

    var body: some View {

        VStack {
            ForEach(0...8, id: \.self) { index in

                index.isEven ? blue : .white
            }

        }
        .overlay {
            BlueCanton(side: 250)
        }
    }

    @ViewBuilder
    func BlueCanton(side: CGFloat) -> some View {

        let center = CGPoint(x:  side / 2, y: side / 2 )
        Rectangle()
            .foregroundColor(blue)
            .frame(width: side, height: side)
            .position(center)
            .overlay {
                Rectangle()
                    .frame(width: side / 5, height: side)
                    .foregroundColor(.white)
                    .position(center)

                Rectangle()
                    .frame(width: side, height: side / 5)
                    .foregroundColor(.white)
                    .position(center)
            }
    }
}

struct Greece_Previews: PreviewProvider {
    static var previews: some View {
        Greece()
    }
}

extension Int {

    var isEven: Bool {

       return (self % 2) == 0
    }
}
