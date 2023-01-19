//
//  Armenia.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

import SwiftUI

struct Armenia: View {
    let red = Color(red: 0.78, green: 0.16, blue: 0.13)
    let blue = Color(red: 0.06, green: 0.18, blue: 0.61)
    let golden = Color(red: 0.91, green: 0.68, blue: 0.23)
    var body: some View {

        VStack(spacing: 0){
            red
            blue
            golden
        }
    }
}

struct Armenia_Previews: PreviewProvider {
    static var previews: some View {
        Armenia()
    }
}
