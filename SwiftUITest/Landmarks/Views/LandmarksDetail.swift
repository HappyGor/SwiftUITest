//
//  LandmarksDetail.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/14.
//

import SwiftUI

struct LandmarksDetail: View {
    @Environment(LandmarksModelData.self) var modelData
    var landmark: LandmarksModel
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            LandmarksMapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            LandmarksCircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    .foregroundColor(Color.green)
                    
                    LandmarksFavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text(landmark.state)
                        .font(.subheadline)
                }
                
                Divider()
                
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = LandmarksModelData()
    return LandmarksDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
