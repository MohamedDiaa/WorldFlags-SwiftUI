//
//  Argentina.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-27.
//

import SwiftUI

struct Argentina: View {
    var body: some View {
        let lightBlue = Color(red: 0.51, green: 0.67, blue: 0.86)
        let golden = Color(red: 0.93, green: 0.72, blue: 0.25)

        ZStack {
            VStack(spacing: 0) {
                lightBlue
                Color.white
                lightBlue
            }

            SunShape()
                .foregroundColor(golden)
                .frame(width: 50)
        }
    }
}

struct Argentina_Previews: PreviewProvider {
    static var previews: some View {
        Argentina()
    }
}
