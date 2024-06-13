//
//  LandmarksContentView.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/13.
//

import SwiftUI

struct LandmarksContentView: View {
    var body: some View {
        VStack {
            LandmarksMapView()
                .frame(height: 300)
            
            LandmarksCircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                .foregroundColor(Color.green)
                
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("California")
                        .font(.subheadline)
                }
                
                Divider()
                
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    LandmarksContentView()
}
