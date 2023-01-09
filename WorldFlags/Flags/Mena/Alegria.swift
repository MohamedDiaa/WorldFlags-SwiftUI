//
//  Alegria.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-09.
//

import SwiftUI

//https://stackoverflow.com/questions/64402650/swiftui-moon-shape

struct Alegria: View {
    var body: some View {

        ZStack {

            HStack {
                Color.green
                Color.white
            }

            Circle()
                .foregroundColor(.red)
                .frame(width: 200)
                .overlay {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.yellow)
                }


        }
    }
}

struct Alegria_Previews: PreviewProvider {
    static var previews: some View {
        Alegria()
    }
}
