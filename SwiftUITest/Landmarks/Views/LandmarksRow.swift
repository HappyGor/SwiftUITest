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
        }
    }
}

#Preview {
    Group {
        LandmarksRow(landmarkModel: landmarks[0])
        LandmarksRow(landmarkModel: landmarks[1])
    }
}
