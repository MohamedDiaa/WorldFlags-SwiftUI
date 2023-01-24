//
//  Nigeria.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-24.
//

import SwiftUI

struct Nigeria: View {
    var body: some View {
        let green = Color(red: 0.23, green: 0.53, blue: 0.33)
        HStack {
            green
            Color.white
            green
        }
    }
}

struct Nigeria_Previews: PreviewProvider {
    static var previews: some View {
        Nigeria()
    }
}
