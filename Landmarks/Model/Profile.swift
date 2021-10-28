//
//  Profile.swift
//  Landmarks
//
//  Created by Sean on 2021/3/22.
//

import Foundation

struct Profile {
    var username: String {
        didSet {
            print(username)
        }
    }
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "g_kumar")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { self.rawValue }
    }
}
