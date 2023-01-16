//
//  Finland.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-16.
//

import SwiftUI

// https://en.wikipedia.org/wiki/Flag_of_Finland

struct Finland: View {
    let blue = Color(red: 0.05, green: 0.16, blue: 0.41)

    var body: some View {
        ZStack{
            Color.white
            Rectangle()
                .foregroundColor(blue)
                .frame(width: 100)
                .offset(x: -50)

            Rectangle()
                .foregroundColor(blue)
                .frame(height: 100)
        }
    }
}

struct Finland_Previews: PreviewProvider {
    static var previews: some View {
        Finland()
    }
}
