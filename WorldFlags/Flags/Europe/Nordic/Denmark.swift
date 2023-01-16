//
//  Denmark.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-16.
//

import SwiftUI

struct Denmark: View {
    let red = Color(red: 0.72, green: 0.16, blue: 0.19)

    var body: some View {
        ZStack{
            red
            Rectangle()
                .foregroundColor(Color.white)
                .frame(width: 100)
                .offset(x: -50)

            Rectangle()
                .foregroundColor(Color.white)
                .frame(height: 100)
        }
    }
}

struct Denmark_Previews: PreviewProvider {
    static var previews: some View {
        Denmark()
    }
}
