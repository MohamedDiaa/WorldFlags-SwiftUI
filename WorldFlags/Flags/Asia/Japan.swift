//
//  Japan.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-18.
//

import SwiftUI

struct Japan: View {
    let redCrimsonColor = Color(red: 0.67, green: 0.14, blue: 0.18)
    var body: some View {
        ZStack {
            Color.white
            
            GeometryReader { geometry in
                
                Circle()
                    .foregroundColor(redCrimsonColor)
                    .position(
                        x: geometry.frame(in: .local).midX,
                        y: geometry.frame(in: .local).midY
                    )
                    .frame(width: geometry.size.width/2)
            }
        }
    }
}

struct Japan_Previews: PreviewProvider {
    static var previews: some View {
        Japan()
    }
}
