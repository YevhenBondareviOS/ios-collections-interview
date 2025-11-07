import Foundation
import Combine

// MARK: - Task 6: Combine

class OrderPublisher {

    /// Fix the Combine implementation below

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

    // TODO: Fix the issues above
}
