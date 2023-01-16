//
//  Austria.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-16.
//

import SwiftUI

struct Austria: View {
    let red = Color(red: 0.72, green: 0.17, blue: 0.21)
    var body: some View {
        VStack {
            red
            Color.white
            red
        }
    }
}

struct Austria_Previews: PreviewProvider {
    static var previews: some View {
        Austria()
    }
}
