//
//  ProfileHostView.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/19.
//

import SwiftUI

struct ProfileHostView: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = ProfileModel.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummaryView(profile: modelData.profile)
            } else {
                ProfileEditorView(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
        }
        .padding()
    }
    
}

#Preview {
    ProfileHostView()
        .environment(ModelData())
}
