//
//  BadgeBackground.swift
//  DrawingPathsAndShapes
//
//  Created by Anton Honcharov on 12.04.2023.
//

import SwiftUI

struct BadgeBackground: View {

    static let gradient = Gradient(colors: [
        Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255),
        Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    ])
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                let xScale: CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                
                let hexagonShape = CGPoint(
                    x: width * 0.95 + xOffset,
                    y: height * (0.20 + HexagonParameters.adjustment)
                )
                path.move(to: hexagonShape)
                
                HexagonParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(
                        x: width * segment.line.x + xOffset,
                        y: height * segment.line.y)
                    )
                    
                    let curve = CGPoint(
                        x: width * segment.curve.x + xOffset,
                        y: height * segment.curve.y
                    )
                    let control = CGPoint(
                        x: width * segment.control.x + xOffset,
                        y: height * segment.control.y
                    )
                    
                    path.addQuadCurve(to: curve, control: control)
                }
                
            }.fill(.linearGradient(
                Self.gradient,
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 0.6))
            )
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
