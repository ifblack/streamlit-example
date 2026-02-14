import SwiftUI

struct CategoryView: View {
    @StateObject var viewModel: CategoryViewModel

    var body: some View {
        List(viewModel.wallpapers) { wallpaper in
            Text(wallpaper.title)
        }
        .navigationTitle(viewModel.category.name)
    }
}
