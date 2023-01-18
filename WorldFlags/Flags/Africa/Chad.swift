//
//  Chad.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-18.
//

import SwiftUI

struct Chad: View {
    
    let blue = Color(red: 0.04, green: 0.13, blue: 0.38)
    let golden = Color(red: 0.96, green: 0.81, blue: 0.27)
    let red = Color(red: 0.72, green: 0.15, blue: 0.20)

    var body: some View {
        HStack(spacing: 0) {
            blue
            golden
            red
        }
    }
}

struct Chad_Previews: PreviewProvider {
    static var previews: some View {
        Chad()
    }
}
