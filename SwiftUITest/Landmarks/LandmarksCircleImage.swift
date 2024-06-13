//
//  LandmarksCircleImage.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/13.
//

import SwiftUI

struct LandmarksCircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(Color.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    LandmarksCircleImage()
}
