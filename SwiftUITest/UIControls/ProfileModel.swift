//
//  ProfileModel.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/19.
//

import Foundation


struct ProfileModel {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    
    static let `default` = ProfileModel(username: "g_kumar")
    
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
        
    }
}
