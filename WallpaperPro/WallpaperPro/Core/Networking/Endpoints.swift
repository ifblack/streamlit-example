import Foundation

enum Endpoints {
    static let baseURL = URL(string: "https://api.wallpaperpro.example")!

    static var feed: URL {
        baseURL.appendingPathComponent("feed")
    }

    static func category(id: String) -> URL {
        baseURL.appendingPathComponent("categories/\(id)")
    }
}
