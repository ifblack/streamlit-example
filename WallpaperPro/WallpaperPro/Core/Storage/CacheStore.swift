import Foundation

final class CacheStore {
    private var wallpapersByID: [UUID: Wallpaper] = [:]

    func cache(_ wallpapers: [Wallpaper]) {
        wallpapers.forEach { wallpapersByID[$0.id] = $0 }
    }

    func wallpaper(withID id: UUID) -> Wallpaper? {
        wallpapersByID[id]
    }
}
