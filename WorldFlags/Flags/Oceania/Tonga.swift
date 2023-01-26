//
//  Tonga.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-26.
//

import SwiftUI

struct Tonga: View {
    var body: some View {
        let red = Color(red: 0.7, green: 0.14, blue: 0.09)

        ZStack {
            red

            Rectangle()
                .foregroundColor(.white)
                .frame(width: 300, height: 200)
                .overlay {
                    ZStack {
                        Rectangle()
                            .foregroundColor(red)
                            .frame(width: 50, height: 150)

                        Rectangle()
                            .foregroundColor(red)
                            .frame(width: 150, height: 50)
                    }
                    .padding(20)
                }
                .position(.init(x: 150, y: 100))
        }
    }
}

struct Tonga_Previews: PreviewProvider {
    static var previews: some View {
        Tonga()
    }
}
