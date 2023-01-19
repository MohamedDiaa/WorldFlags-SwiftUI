//
//  CentralAfrica.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-18.
//

import SwiftUI

struct CentralAfrica: View {

    let blue = Color(red: 0.05, green: 0.17, blue: 0.49)
    let green = Color(red: 0.29, green: 0.59, blue: 0.22)
    let golden = Color(red: 0.97, green: 0.82, blue: 0.28)
    let red = Color(red: 0.76, green: 0.17, blue: 0.22)

    var body: some View {

        ZStack {
            VStack(spacing: 0) {
                blue
                    .overlay(alignment: .leading) {
                        StarShape()
                            .frame(width: 100)
                            .foregroundColor(.yellow)
                            .offset(x: 30)
                    }
                Color.white
                green
                golden
            }
            .overlay {
                Rectangle()
                    .frame(width: 100)
                    .foregroundColor(red)
            }
        }
    }
}

struct CentralAfrica_Previews: PreviewProvider {
    static var previews: some View {
        CentralAfrica()
    }
}
