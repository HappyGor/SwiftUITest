//
//  LandmarksContentView.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/13.
//

import SwiftUI

struct LandmarksContentView: View {
    @State private var modelData = LandmarksModelData()
    
    var body: some View {
        LandmarksList()
            .environment(modelData)
    }
}

#Preview {
    LandmarksContentView()
}
