import SwiftUI

struct WallpaperDetailView: View {
    @StateObject var viewModel: WallpaperDetailViewModel

    var body: some View {
        VStack(spacing: 16) {
            Text(viewModel.wallpaper.title)
                .font(.title2)
            Text(viewModel.wallpaper.imageURL.absoluteString)
                .font(.footnote)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("Details")
    }
}
