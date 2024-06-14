//
//  LandmarksList.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/14.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarksDetail(landmark: landmark)
                } label: {
                    LandmarksRow(landmarkModel: landmark)
                }

            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }

    }
}

#Preview {
    LandmarksList()
}
