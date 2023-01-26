//
//  Algeria.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-09.
//

import SwiftUI

//https://stackoverflow.com/questions/64402650/swiftui-moon-shape

struct Algeria: View {
    var body: some View {
        let green = Color(red: 0.17, green: 0.4, blue: 0.21)
        let red = Color(red: 0.76, green: 0.17, blue: 0.22)
        ZStack {

            HStack {
                green
                Color.white
            }

            CrescentShape(cresentColor: red)
            StarShape()
                .foregroundColor(red)
                .frame(width: 80)
                .offset(x: 25, y: -20)
                .rotationEffect(Angle(degrees: 20))
        }
    }
}

struct Algeria_Previews: PreviewProvider {
    static var previews: some View {
        Algeria()
    }
}
