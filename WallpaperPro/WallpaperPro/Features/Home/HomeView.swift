import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel

    var body: some View {
        NavigationStack {
            Group {
                if viewModel.wallpapers.isEmpty {
                    ContentUnavailableView("No wallpapers yet", systemImage: "photo")
                } else {
                    List(viewModel.wallpapers) { wallpaper in
                        NavigationLink(wallpaper.title) {
                            WallpaperDetailView(viewModel: WallpaperDetailViewModel(wallpaper: wallpaper))
                        }
                    }
                }
            }
            .navigationTitle("WallpaperPro")
        }
        .task {
            await viewModel.load()
        }
    }
}
