//
//  Scottishflag.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-17.
//

import SwiftUI

struct ScottishFlagView: View {
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Color.blue
                if proxy.size.height < proxy.size.width {
                    Group {
                        TiltedRectangle(width: proxy.size.width, height: 40, degrees: 24.76)
                        TiltedRectangle(width: proxy.size.width, height: 40, degrees: -24.76)
                    }
                } else {
                    Group {
                        TiltedRectangle(width: 40, height: proxy.size.height, degrees: 24.76)
                        TiltedRectangle(width: 40, height: proxy.size.height, degrees: -24.76)
                    }
                }
            }
        }
    }
}

struct TiltedRectangle: View {
    var width: CGFloat
    var height: CGFloat
    var degrees: CGFloat
    var body: some View {
        Rectangle()
            .foregroundColor(.white)
            .frame(width: width, height: height, alignment: .center)
            .rotationEffect(Angle(degrees: degrees), anchor: .center)
            .scaleEffect(2)
    }
}

struct SC_Previews: PreviewProvider {
    static var previews: some View {
        ScottishFlagView()
    }
}
