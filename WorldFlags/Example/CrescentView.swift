//
//  CrescentView.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-11.
//

import SwiftUI

struct CrescentView: View {
    var body: some View {

        Circle()
            .trim(from: 0, to: 0.5)
            .rotationEffect(Angle(degrees: 90))
            .foregroundColor(.green)
            .frame(width: 100, height: 100)

    }
}

struct CrescentView_Previews: PreviewProvider {
    static var previews: some View {
        CrescentView()
    }
}
