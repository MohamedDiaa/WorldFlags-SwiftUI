//
//  India.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-13.
//

import SwiftUI

struct India: View {
    var body: some View {

        ZStack {

            VStack {
                Color.orange
                Color.white
                Color.green
            }

            Circle()
                .foregroundColor(.blue)
                .frame(width: 200, height: 200)
            Circle()
                .foregroundColor(.white)
                .frame(width: 170, height: 170)

            Circle()
                .foregroundColor(.blue)
                .frame(width: 40, height: 40)

            Rectangle()
                .frame(width: 10, height: 70)
                .rotationEffect(Angle(degrees: 50))
                .offset(x: 0 , y: -30 )
                .foregroundColor(.blue)
        }
    }
}

struct India_Previews: PreviewProvider {
    static var previews: some View {
        India()
    }
}
