import Foundation

// MARK: - Task 4: Concurrency & Thread Safety

class ConcurrencyManager {

    /// Fix the data race and convert to modern Swift concurrency
    /// The code below has thread-safety issues. Refactor it.

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

    // TODO: Refactor the above code to be thread-safe using modern Swift concurrency
}
