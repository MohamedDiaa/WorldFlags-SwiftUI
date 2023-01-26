//
//  Syria.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-26.
//

import SwiftUI

struct Syria: View {
    var body: some View {

        let red = Color(red: 0.75, green: 0.16, blue: 0.17)
        let green = Color(red: 0.21, green: 0.47, blue: 0.25)

        ZStack {

            VStack(spacing: 0) {
                red
                Color.white
                Color.black
            }

            HStack(spacing: 80) {
                StarShape()
                    .foregroundColor(.green)
                    .frame(width: 80)

                StarShape()
                    .foregroundColor(.green)
                    .frame(width: 80)
            }
        }
    }
}

struct Syria_Previews: PreviewProvider {
    static var previews: some View {
        Syria()
    }
}
