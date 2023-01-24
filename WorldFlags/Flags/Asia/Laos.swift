//
//  Laos.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-24.
//

import SwiftUI

struct Laos: View {
    var body: some View {
        let red = Color(red: 0.75, green: 0.16, blue: 0.17)
        let blue = Color(red: 0.04, green: 0.14, blue: 0.39)

        GeometryReader { geo in
            let frame = geo.frame(in: .local)

        VStack(spacing: 0) {
            red
            ZStack {
                blue
                Circle()
                    .foregroundColor(.white)
                    .padding(30)
            }
            .frame(height: 0.5 * frame.height)
            red
        }
        }
    }
}

struct Laos_Previews: PreviewProvider {
    static var previews: some View {
        Laos()
    }
}
