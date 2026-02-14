import Foundation

struct Wallpaper: Identifiable, Codable, Hashable {
    let id: UUID
    let title: String
    let imageURL: URL
    let thumbnailURL: URL
    let categoryID: UUID
    let isPremium: Bool
}
