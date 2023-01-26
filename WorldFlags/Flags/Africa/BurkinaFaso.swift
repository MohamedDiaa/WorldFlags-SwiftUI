//
//  BurkinaFaso.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-26.
//

import SwiftUI

struct BurkinaFaso: View {
    var body: some View {
        let red = Color(red: 0.86, green: 0.24, blue: 0.21)
        let green = Color(red: 0.27, green: 0.62, blue: 0.32)
        let golden = Color(red: 0.96, green: 0.83, blue: 0.29)

        ZStack {
            VStack(spacing: 0){
                red
                green
            }

            StarShape()
                .frame(width: 200)
                .foregroundColor(golden)
        }
    }
}

struct BurkinaFaso_Previews: PreviewProvider {
    static var previews: some View {
        BurkinaFaso()
    }
}
