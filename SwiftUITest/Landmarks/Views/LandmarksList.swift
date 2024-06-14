//
//  LandmarksList.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/14.
//

import SwiftUI

struct LandmarksList: View {
    @Environment(LandmarksModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    private var filteredLandmarks: [LandmarksModel] {
        modelData.landmarks.filter { landmark in
            showFavoritesOnly == false || landmark.isFavorite == true
        }
    }
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarksDetail(landmark: landmark)
                    } label: {
                        LandmarksRow(landmarkModel: landmark)
                    }

                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }

    }
}

#Preview {
    LandmarksList()
        .environment(LandmarksModelData())
}
