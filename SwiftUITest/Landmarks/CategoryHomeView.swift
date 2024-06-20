//
//  CategoryHomeView.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/18.
//

import SwiftUI

struct CategoryHomeView: View {
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationSplitView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHostView()
                    .environment(modelData)
            }

        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHomeView()
        .environment(ModelData())
}
