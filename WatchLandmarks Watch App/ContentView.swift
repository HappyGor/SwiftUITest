//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by GorCat on 2024/7/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarksList()
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
