//
//  SunShape.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-27.
//

import SwiftUI

struct SunShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let frame = rect
        let radius = min(frame.width, frame.height)
        
        let pts = getPointsOnCircle(radius: radius, origin: CGPoint(x: frame.midX, y: frame.midY), count: 18)
        let pts2 = getPointsOnCircle(radius: radius / 2, origin: CGPoint(x: frame.midX, y: frame.midY), count: 18, tiltAngle: 0.2)
        
        return Path { path in
            path.move(to: pts[0])
            
            for i in 0..<18 {
                path.addLine(to: pts2[i])
                
                if (i + 1) < pts.count {
                    path.addLine(to: pts[i + 1])
                }
            }
        }
    }
}

struct SunShapeTest: View {
    
    /*
     var body: some View {
     
     SunShape()
     .foregroundColor(.yellow)
     .frame(width: 100)
     }
     */
    var body: some View {
        
        GeometryReader { geo in
            
            let frame = geo.frame(in: .local)
            
            let pts = getPointsOnCircle(radius: 100, origin: CGPoint(x: frame.midX, y: frame.midY), count: 18)
            let pts2 = getPointsOnCircle(radius: 50, origin: CGPoint(x: frame.midX, y: frame.midY), count: 18, tiltAngle: 0.2)
            
            Path { path in
                path.move(to: pts[0])
                
                for i in 0..<18 {
                    path.addLine(to: pts2[i])
                    
                    if (i + 1) < pts.count {
                        path.addLine(to: pts[i + 1])
                    }
                }
            }
            .fill(.yellow)
            
            ForEach(pts + pts2, id: \.self) { pt in
                Circle()
                    .foregroundColor(.black)
                    .frame(width: 5)
                    .position(pt)
            }
        }
        
    }
}
struct SunShape_Previews: PreviewProvider {
    static var previews: some View {
        SunShapeTest()
    }
}
