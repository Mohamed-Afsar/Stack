import XCTest
@testable import Stack

final class StackTests: XCTestCase {
    func testExample() {
        let bOne = "BookOne", bTwo = "BookTwo", bThree = "BookThree", bFour = "BookFour", bFive = "BookFive", bSix = "BookSix"
        
        // First One
        let stack = Stack<String>()
        // First
        XCTAssertEqual(stack.top, nil)
        // Last
        XCTAssertEqual(stack.bottom, nil)
        // Count
        XCTAssertEqual(stack.count, 0)
        // IsEmpty
        XCTAssertEqual(stack.isEmpty, true)
        
        // Enqueue
        stack.push(bOne)
        stack.push([bTwo, bThree, bFour, bFive, bSix])
        print("stack:\n\(stack)")
        
        // First
        XCTAssertEqual(stack.top, bSix)
        // Last
        XCTAssertEqual(stack.bottom, bOne)
        // Count
        XCTAssertEqual(stack.count, 6)
        // IsEmpty
        XCTAssertEqual(stack.isEmpty, false)
        
        
        // Second One
        let stack2: Stack<String> = [bOne, bTwo, bThree, bFour, bFive, bSix]
        print("stack2:\n\(stack2)")
        // Dequeue
        XCTAssertEqual(stack2.pop(), bSix)
        XCTAssertEqual(stack2.count, 5)
        XCTAssertEqual(stack2.pop(bThree), true)
        XCTAssertEqual(stack2.pop("unknown"), false)
        
        // Peek
        XCTAssertEqual(stack2.peek(), bFive)
        XCTAssertEqual(stack2.pop(), bFive)
        XCTAssertEqual(stack2.peek(), bFour)
        print("stack2: \(stack2)")
        
        // Third One
        let stack3 = Stack<String>(bOne)
        print("stack3: \(stack3)")
        XCTAssertEqual(stack3.pop(), bOne)
        XCTAssertEqual(stack3.pop(), nil)
        stack3.push(bOne)
        stack3.push(bTwo)
        stack3.push(bThree)
        XCTAssertEqual(stack3.pop(), bThree)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
