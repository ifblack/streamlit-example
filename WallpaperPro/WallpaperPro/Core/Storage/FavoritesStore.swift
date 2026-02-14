import Foundation
import Combine

final class FavoritesStore: ObservableObject {
    @Published private(set) var favorites: Set<UUID> = []

    func isFavorite(_ wallpaperID: UUID) -> Bool {
        favorites.contains(wallpaperID)
    }

    func toggle(_ wallpaperID: UUID) {
        if favorites.contains(wallpaperID) {
            favorites.remove(wallpaperID)
        } else {
            favorites.insert(wallpaperID)
        }
    }
}
