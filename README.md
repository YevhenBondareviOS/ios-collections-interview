# Live Coding Interview - Swift Collections

## Getting Started

1. **Open the project**:
   ```bash
   open LiveCodingInterview.xcodeproj
   ```

2. **Open the file to edit**:
   - Navigate to `LiveCodingInterview/OrderManager.swift`
   - This file contains **3 functions** you need to implement

3. **Run the tests**:
   - Press `⌘U` to run all tests
   - All 16 tests will fail initially (expected!)
   - After implementing each function, press `⌘U` again to see progress

---

## Your Tasks

You'll implement **3 functions** in `OrderManager.swift`:

### Task 1: Array Filtering & Sorting (15 min)
```swift
func getCustomerOrders(orders: [Order], customerId: String) -> [Order]
```

**What to do**: Filter orders by customer ID and sort by amount (highest first)

**Example**:
```swift
Input: [Order(id: "1", customerId: "A", amount: 100),
        Order(id: "2", customerId: "B", amount: 200),
        Order(id: "3", customerId: "A", amount: 50)]

getCustomerOrders(orders: input, customerId: "A")
→ [Order(id: "1", amount: 100), Order(id: "3", amount: 50)]
```

**Tests**: 4 tests will pass when done ✅

---

### Task 2: Dictionary Aggregation (20 min)
```swift
func getTotalSpendingPerCustomer(orders: [Order]) -> [String: Double]
```

**What to do**: Calculate total spending for each customer

**Example**:
```swift
Input: [Order(id: "1", customerId: "A", amount: 100),
        Order(id: "2", customerId: "B", amount: 200),
        Order(id: "3", customerId: "A", amount: 50)]

getTotalSpendingPerCustomer(orders: input)
→ ["A": 150.0, "B": 200.0]
```

**Tests**: 4 more tests will pass when done ✅

---

### Task 3: Top N with Sorting (25 min)
```swift
func getTopCustomers(orders: [Order], limit: Int) -> [(customerId: String, totalSpending: Double)]
```

**What to do**: Find top N customers by total spending (sorted, highest first)

**Example**:
```swift
Input: [Order(id: "1", customerId: "A", amount: 100),
        Order(id: "2", customerId: "B", amount: 200),
        Order(id: "3", customerId: "C", amount: 300),
        Order(id: "4", customerId: "A", amount: 50)]

getTopCustomers(orders: input, limit: 2)
→ [("C", 300.0), ("B", 200.0)]
```

**Hint**: You can reuse your Task 2 logic here!

**Tests**: 5 more tests will pass when done ✅

---

## How to Run Tests

### Run all tests:
```
Press ⌘U
```

### Run tests for specific task:
1. Open `LiveCodingInterviewTests/OrderManagerTests.swift`
2. Find the test section (e.g., `// MARK: - Task 1 Tests`)
3. Click the ◇ diamond next to individual test function
4. Or press `⌘6` to open Test Navigator and click any test

### See test results:
- **Green checkmark ✅** = Test passed
- **Red X ❌** = Test failed (read the error message!)
- Test Navigator (`⌘6`) shows all test status

---

## Workflow

1. **Start**: Open `OrderManager.swift`
2. **Implement Task 1**: Replace `fatalError("Not implemented")` with real code
3. **Test**: Press `⌘U` → 4 tests should pass
4. **Implement Task 2**: Same process
5. **Test**: Press `⌘U` → 8 tests total should pass
6. **Implement Task 3**: Same process
7. **Test**: Press `⌘U` → All 16 tests should pass ✅

---

## Quick Reference

### Keyboard Shortcuts
| Shortcut | Action |
|----------|--------|
| `⌘U` | Run all tests |
| `⌘6` | Open Test Navigator |
| `⌘B` | Build project |
| `⌘⇧K` | Clean build |

### Useful Swift APIs

**Arrays**:
```swift
array.filter { $0.property == value }
array.sorted { $0.amount > $1.amount }  // descending
```

**Dictionaries**:
```swift
var dict: [String: Double] = [:]
dict[key, default: 0] += value

// Or functional:
orders.reduce(into: [:]) { dict, order in
    dict[order.customerId, default: 0] += order.amount
}
```

**Dictionary to sorted array**:
```swift
Array(dictionary)
    .sorted { $0.value > $1.value }
    .prefix(limit)
    .map { ($0.key, $0.value) }
```

---

## Common Mistakes

**Task 1**:
- ❌ Forgetting to sort after filtering
- ❌ Sorting ascending instead of descending

**Task 2**:
- ❌ Overwriting values instead of accumulating: `dict[key] = value` ← wrong
- ✅ Should be: `dict[key] = (dict[key] ?? 0) + value`

**Task 3**:
- ❌ Returning dictionary instead of sorted array
- ❌ Not handling when `limit > customer count`

---

## Tips

✅ **Read the examples** in `OrderManager.swift` - they show exactly what's expected
✅ **Test after each function** - don't wait until the end
✅ **Read test failures carefully** - they tell you what's wrong
✅ **Use the hints** - they're in the code comments

---

## Time Target

| Time | Goal |
|------|------|
| 15 min | Task 1 complete (4/16 tests passing) |
| 35 min | Task 2 complete (8/16 tests passing) |
| 60 min | Task 3 complete (16/16 tests passing) ✅ |

---

Good luck! 🚀

**Remember**: Start in `LiveCodingInterview/OrderManager.swift` and press `⌘U` to test!
