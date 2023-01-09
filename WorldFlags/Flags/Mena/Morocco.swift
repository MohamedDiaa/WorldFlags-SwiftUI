//
//  Morocco.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-09.
//

import SwiftUI

struct Morocco: View {
    var body: some View {

        ZStack {
            Color.red

            Image(systemName: "star")
                .font(.system(size: 200))
                .foregroundColor(.green)

        }
    }
}

struct Morocco_Previews: PreviewProvider {
    static var previews: some View {
        Morocco()
    }
}
