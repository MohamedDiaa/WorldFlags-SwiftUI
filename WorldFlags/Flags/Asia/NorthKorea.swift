//
//  NorthKorea.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

import SwiftUI

struct NorthKorea: View {
    var body: some View {
        let blue = Color(red: 0.12, green: 0.30, blue: 0.62)
        let red = Color(red: 0.85, green: 0.21, blue: 0.19)

        ZStack {
            VStack(spacing: 20){
                blue
                red
                    .overlay {
                        ZStack {
                            GeometryReader { geo in
                                let frame = geo.frame(in: .local)
                                let width = min(min(frame.height, frame.width), 100)
                                let center = CGPoint(x: frame.width * 1 / 3, y: frame.midY)
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: width)
                                    .position(center)
                                    .overlay {
                                        StarShape()
                                            .foregroundColor(red)
                                            .frame(width: width)
                                            .position(center)
                                    }
                            }
                        }
                    }
                blue
            }
        }
    }
}

struct NorthKorea_Previews: PreviewProvider {
    static var previews: some View {
        NorthKorea()
    }
}
