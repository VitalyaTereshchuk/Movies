import Foundation

//MARK: - Helper to save user defaults keys and keep them unique
enum UserDefaultsKeys {
    static let appearanceTheme = "appearanceTheme"
    static let username = "username"
    static let itemsPerPage = "itemsPerPage"
    static let notificationsEnabled = "notificationsEnabled"
    static let avatarImageData = "avatarImageData"
}

//MARK: - Data model for appearance
enum AppearanceTheme: String, Identifiable, CaseIterable {
    case system
    case light
    case dark
    var id: Self { return self }
}
