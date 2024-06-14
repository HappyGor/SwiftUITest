//
//  LandmarksFavoriteButton.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/14.
//

import SwiftUI

struct LandmarksFavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }

    }
}

#Preview {
    LandmarksFavoriteButton(isSet: .constant(true))
}
