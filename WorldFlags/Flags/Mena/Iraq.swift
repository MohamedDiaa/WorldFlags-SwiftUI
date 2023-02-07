//
//  Iraq.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-27.
//

import SwiftUI

struct Iraq: View {

    init() {
        for familyFont in  UIFont.familyNames.sorted() {
            let fontName = UIFont.fontNames(forFamilyName: familyFont)

            print("Family Name : \(familyFont) and the font Name : \(fontName)")
        }
    }
    var body: some View {
        let red = Color(red: 0.74, green: 0.16, blue: 0.17)

        ZStack {
            VStack(spacing: 0) {
                red
                Color.white
                Color.black
            }

            Text("الله اكبر")
                .foregroundColor(.green)
                .font(Font.custom("KufiNormal", size: 100))
        }
    }
}

struct Iraq_Previews: PreviewProvider {
    static var previews: some View {
        Iraq()
    }
}
