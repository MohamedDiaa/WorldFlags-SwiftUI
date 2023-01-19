//
//  Cameroon.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

import SwiftUI

struct Cameroon: View {
    var body: some View {
        let green = Color(red: 0.21, green: 0.47, blue: 0.37)
        let red = Color(red: 0.75, green: 0.16, blue: 0.17)
        let golden = Color(red: 0.96, green: 0.83, blue: 0.29)

        HStack(spacing: 0) {
            green
            red
                .overlay {
                    GeometryReader { geometry in
                        let starWidth = min(min(geometry.size.width, geometry.size.height), 110)
                        StarShape()
                            .frame(width: starWidth)
                            .position(CGPoint(x: geometry.frame(in: .local).midX,
                                              y: geometry.frame(in: .local).midY))
                            .foregroundColor(golden)
                    }
                }
                .clipped()
            golden
        }
    }
}

struct Cameroon_Previews: PreviewProvider {
    static var previews: some View {
        Cameroon()
    }
}
