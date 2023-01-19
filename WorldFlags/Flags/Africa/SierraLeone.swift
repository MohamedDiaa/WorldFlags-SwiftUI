//
//  SierraLeone.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

import SwiftUI

struct SierraLeone: View {
    let green = Color(red: 0.33, green: 0.71, blue: 0.29)
    let blue = Color(red: 0.19, green: 0.44, blue: 0.76)
    var body: some View {
        VStack {
            green
            Color.white
            blue
        }
    }
}

struct SierraLeone_Previews: PreviewProvider {
    static var previews: some View {
        SierraLeone()
    }
}
