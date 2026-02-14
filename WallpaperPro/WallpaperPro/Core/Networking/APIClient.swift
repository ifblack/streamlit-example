import Foundation

final class APIClient {
    private let session: URLSession

    init(session: URLSession = .shared) {
        self.session = session
    }

    func fetchFeed() async throws -> Feed {
        // Placeholder implementation for initial scaffold.
        try await Task.sleep(nanoseconds: 50_000_000)
        return Feed(items: [])
    }
}
