//
//  Madagascar.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-18.
//

import SwiftUI

struct Madagascar: View {
    var body: some View {

        GeometryReader { geometry in

            HStack(spacing: 0) {

                Color.white
                    .frame(width: geometry.size.width * 2.0 / 5.0)
                VStack(spacing: 0) {
                    Color.red
                    Color.green
                }
            }
        }
    }
}

struct Madagascar_Previews: PreviewProvider {
    static var previews: some View {
        Madagascar()
    }
}
