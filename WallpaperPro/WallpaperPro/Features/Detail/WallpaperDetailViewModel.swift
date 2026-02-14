import Foundation
import Combine

@MainActor
final class WallpaperDetailViewModel: ObservableObject {
    let wallpaper: Wallpaper

    init(wallpaper: Wallpaper) {
        self.wallpaper = wallpaper
    }
}
