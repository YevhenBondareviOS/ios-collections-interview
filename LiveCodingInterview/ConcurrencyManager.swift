import Foundation

// MARK: - Task 4: Concurrency & Thread Safety

class ConcurrencyManager {

    /// Refactor this code to use modern Swift concurrency (async/await)
    /// and make it thread-safe.
    ///
    /// Requirements:
    /// - Convert callback-based methods to async/await
    /// - Ensure thread-safe access to the orders array (no data races)
    /// - All tests should pass without crashes or race conditions
    ///
    /// Current implementation (has issues):

    private var orders: [Order] = []

    func updateOrders(_ newOrders: [Order]) {
        DispatchQueue.global().async {
            self.orders = newOrders
        }
    }

    func getOrders(completion: @escaping ([Order]) -> Void) {
        DispatchQueue.global().async {
            completion(self.orders)
        }
    }

    // TODO: Refactor above to meet requirements
}
