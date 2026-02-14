import Foundation
import Combine

@MainActor
final class HomeViewModel: ObservableObject {
    @Published private(set) var wallpapers: [Wallpaper] = []

    private let apiClient: APIClient

    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
    }

    func load() async {
        do {
            let feed = try await apiClient.fetchFeed()
            wallpapers = feed.items
        } catch {
            wallpapers = []
        }
    }
}
