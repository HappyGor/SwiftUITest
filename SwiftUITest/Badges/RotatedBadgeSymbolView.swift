//
//  RotatedBadgeSymbolView.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/17.
//

import SwiftUI

struct RotatedBadgeSymbolView: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbolView()
            .padding(-60)
            .border(.blue)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbolView(angle: Angle(degrees: 5))
}
