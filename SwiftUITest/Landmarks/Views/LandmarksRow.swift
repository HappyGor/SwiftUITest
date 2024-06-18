//
//  LandmarksRow.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/14.
//

import SwiftUI

struct LandmarksRow: View {
    var landmarkModel: LandmarksModel
    
    var body: some View {
        HStack {
            landmarkModel.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmarkModel.name)
            
            Spacer()
            
            if landmarkModel.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarksRow(landmarkModel: landmarks[0])
        LandmarksRow(landmarkModel: landmarks[1])
    }
}
