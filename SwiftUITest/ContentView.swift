//
//  ContentView.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/13.
//

import SwiftUI

struct ContentView: View {
    @State private var modelData = ModelData()
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHomeView()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)


            LandmarksList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
