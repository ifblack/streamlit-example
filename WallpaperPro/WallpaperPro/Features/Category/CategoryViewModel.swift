import Foundation
import Combine

@MainActor
final class CategoryViewModel: ObservableObject {
    @Published private(set) var wallpapers: [Wallpaper] = []
    let category: Category

    init(category: Category) {
        self.category = category
    }
}
