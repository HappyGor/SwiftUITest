//
//  HikeBadgeView.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/19.
//

import SwiftUI

struct HikeBadgeView: View {
    var name: String

    var body: some View {
        VStack(alignment: .center) {
            BadgeView()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

#Preview {
    HikeBadgeView(name: "Preview Testing")
}
