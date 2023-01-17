//
//  Thailand.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-17.
//

import SwiftUI

struct Thailand: View {
    let red = Color(red: 0.6, green: 0.15, blue: 0.19)
    let blue = Color(red: 0.16, green: 0.15, blue: 0.27)
    var body: some View {
        VStack(spacing: 0){
            red
            Color.white
            blue
            blue
            Color.white
            red
        }
    }
}

struct Thailand_Previews: PreviewProvider {
    static var previews: some View {
        Thailand()
    }
}
