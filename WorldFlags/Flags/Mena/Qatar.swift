//
//  Qatar.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-16.
//

import SwiftUI

struct Qatar: View {
    let red = Color(red: 0.5, green: 0.11, blue: 0.21)
    var body: some View {

        GeometryReader { geometry in

            ZStack(alignment: .leading) {
                HStack {
                    Color.white
                        .frame(width: 0.32 * geometry.size.width)
                    red
                }

                VStack(spacing: 0) {
                    ForEach(0...8, id: \.self) { _ in
                        TrianglePillar()
                            .rotationEffect(Angle(degrees: 90))
                            .clipped()
                    }
                }
                .frame(width: 100)
                .foregroundColor(.white)
                .offset(x: 0.32 * geometry.size.width )



            }
        }
    }
}

struct Qatar_Previews: PreviewProvider {
    static var previews: some View {
        Qatar()
    }
}
