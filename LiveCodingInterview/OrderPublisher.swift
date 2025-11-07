import Foundation
import Combine

// MARK: - Task 6: Combine

class OrderPublisher {

    /// Implement the missing functionality and fix subscription issues.
    ///
    /// Requirements:
    /// - getOrdersPublisher() should return a publisher that emits order updates
    /// - Subscriptions should persist across multiple publish events
    /// - Multiple subscribers should be able to receive updates
    /// - All tests should pass
    ///
    /// Current implementation (incomplete):

    private var orders: [Order] = []
    private let orderSubject = PassthroughSubject<[Order], Never>()

    func getOrdersPublisher() -> AnyPublisher<[Order], Never> {
        // TODO: Implement
        fatalError("Not implemented")
    }

    func subscribeToHighValueOrders(threshold: Double, handler: @escaping ([Order]) -> Void) {
        orderSubject
            .map { orders in
                orders.filter { $0.amount >= threshold }
            }
            .sink { filteredOrders in
                handler(filteredOrders)
            }
    }

    func publishOrders(_ newOrders: [Order]) {
        orders = newOrders
        orderSubject.send(newOrders)
    }

    // TODO: Implement and fix above to meet requirements
}
