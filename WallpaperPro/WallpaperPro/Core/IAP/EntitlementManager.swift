import Foundation
import Combine

final class EntitlementManager: ObservableObject {
    @Published private(set) var hasProAccess = false

    func unlockPro() {
        hasProAccess = true
    }
}
