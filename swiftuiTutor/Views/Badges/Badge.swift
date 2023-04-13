//
//  Badge.swift
//  swiftuiTutor
//
//  Created by Anton Honcharov on 13.04.2023.
//

import SwiftUI

struct Badge: View {
    
    var badgeSymbols: some View {
        ForEach(0..<6) { index in
            RotatedBadgeSymbol(
                angle: .degrees((Double(index) / Double(6) * 360.0))
            )
            .opacity(0.5)
        }
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(
                        x: geometry.size.width / 2,
                        y: (3.0 / 4.0) * geometry.size.height
                    )

            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
