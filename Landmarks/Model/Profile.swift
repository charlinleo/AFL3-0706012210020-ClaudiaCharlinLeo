//
//  Profile.swift
//  Landmarks
//
//  Created by Charlin Leo on 03/05/24.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.summer
    var goalDate = Date()

    static let `default` = Profile(username: "Charlin")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case autumn = "🍂"
        case winter = "☃️"
        case summer = "🌞"

        var id: String { rawValue }
    }
}
