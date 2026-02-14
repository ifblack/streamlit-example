import SwiftUI

struct PaywallView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("WallpaperPro Premium")
                .font(.title)
            Text("Unlock 4K and exclusive collections.")
                .foregroundStyle(.secondary)
            Button("Upgrade") {}
                .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
