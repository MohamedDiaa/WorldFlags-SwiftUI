//
//  JapanTest.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-18.
//

import SwiftUI

struct JapanTest: View {

    var body: some View {

        GeometryReader { geometry in
            VStack{
                Circle()
                    .foregroundColor(.red)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct JapanTest_Previews: PreviewProvider {
    static var previews: some View {
        JapanTest()
    }
}
