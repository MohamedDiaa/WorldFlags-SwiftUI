//
//  Sweden.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-16.
//

import SwiftUI

struct Sweden: View {
    let blue = Color(red: 0.18, green: 0.41, blue: 0.64)
    let yellow = Color(red: 0.96, green: 0.81, blue: 0.27)

    var body: some View {
        ZStack{
            blue
            Rectangle()
                .foregroundColor(yellow)
                .frame(width: 100)
                .offset(x: -50)

            Rectangle()
                .foregroundColor(yellow)
                .frame(height: 100)
        }
    }
}

struct Sweden_Previews: PreviewProvider {
    static var previews: some View {
        Sweden()
    }
}
