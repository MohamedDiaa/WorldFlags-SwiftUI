//
//  Niger.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-24.
//

import SwiftUI

struct Niger: View {
    var body: some View {
        let orange = Color(red: 0.82, green: 0.36, blue: 0.15)
        let green = Color(red: 0.31, green: 0.68, blue: 0.25)

        VStack {
            orange
            ZStack {
                Color.white
                GeometryReader { geo in
                    let frame = geo.frame(in: .local)
                Circle()
                    .foregroundColor(orange)
                    .padding(frame.height / 6)
                    .position(frame.center)
                }
            }
            green
        }
    }
}

struct Niger_Previews: PreviewProvider {
    static var previews: some View {
        Niger()
    }
}
