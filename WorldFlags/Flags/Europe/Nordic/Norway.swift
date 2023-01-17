//
//  Norway.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-17.
//

import SwiftUI

struct Norway: View {
    let red = Color(red: 0.82, green: 0.26, blue: 0.20)
    let blue = Color(red: 0.07, green: 0.18, blue: 0.83)

    let unit: CGFloat = 20

    var body: some View {
        ZStack{
            red
            Rectangle()
                .foregroundColor(blue)
                .frame(width: unit * 3)
                .offset(x: -50)
                .overlay {
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: unit)
                        .offset(x: -10)

                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: unit)
                        .offset(x: -90)
                }

            Rectangle()
                .foregroundColor(blue)
                .frame(height: unit * 3)
                .overlay {

                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(height: unit)
                        .offset(y: -40)

                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(height: unit)
                        .offset(y: 40)

                }

            Rectangle()
                .foregroundColor(blue)
                .frame(width: unit * 3)
                .offset(x: -50)
        }
    }
}

struct Norway_Previews: PreviewProvider {
    static var previews: some View {
        Norway()
    }
}
