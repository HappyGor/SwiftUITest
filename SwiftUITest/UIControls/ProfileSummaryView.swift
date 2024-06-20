//
//  ProfileSummaryView.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/19.
//

import SwiftUI

struct ProfileSummaryView: View {
    @Environment(ModelData.self) var modelData
    var profile: ProfileModel

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                    
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadgeView(name: "First Hike")
                            HikeBadgeView(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadgeView(name: "Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)


                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummaryView(profile: ProfileModel.default)
        .environment(ModelData())
}
