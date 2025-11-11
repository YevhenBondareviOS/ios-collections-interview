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
    private let orderSubject = CurrentValueSubject<[Order], Never>([])

    func publishOrders(_ newOrders: [Order]) {
        orders = newOrders
        orderSubject.send(newOrders)
    }
    
    func getOrdersPublisher() -> AnyPublisher<[Order], Never> {
        // TODO: Implement
        fatalError("Not implemented")
    }

    func subscribeToHighValueOrders(threshold: Double, handler: @escaping ([Order]) -> Void) {
        // TODO: After this method called once handler should be called with a list of orders having order.amount >= threshold each time the orders array updates
        fatalError("Not implemented")
    }

    // TODO: Implement and fix above to meet requirements
}
