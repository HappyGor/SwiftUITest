//
//  BadgeView.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/17.
//

import SwiftUI

struct BadgeView: View {
    var body: some View {
        
        ZStack {
            BadgeBackgroundView()
            
            GeometryReader { geometry in
                badgeSymbolsView
                    .scaleEffect(1 / 4, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
    }
    
    
    var badgeSymbolsView: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbolView(
                angle: .degrees(Double(index) / Double(8)) * 360.0
            )
        }
        .opacity(0.5)
    }
}

#Preview {
    BadgeView()
}
