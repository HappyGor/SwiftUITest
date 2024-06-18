//
//  CategoryItem.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/18.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: LandmarksModel
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
