//
//  ViewController.swift
//  StackExample
//
//  Created by Mohamed Afsar on 28/03/20.
//  Copyright © 2020 Jambav. All rights reserved.
//

import UIKit
import Stack

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bOne = "BookOne", bTwo = "BookTwo", bThree = "BookThree", bFour = "BookFour", bFive = "BookFive", bSix = "BookSix"
        
        // First One
        let stack = Stack<String>()
        // First
        print("stack.top: \(String(describing: stack.top))")
        // Last
        print("stack.bottom: \(String(describing: stack.bottom))")
        // Count
        print("stack.count: \(stack.count)")
        // IsEmpty
        print("stack.isEmpty: \(stack.isEmpty)")
        
        // Enqueue
        stack.push(bOne)
        stack.push([bTwo, bThree, bFour, bFive, bSix])
        print("stack:\n\(stack)")
        
        // First
        print("stack.top: \(String(describing: stack.top))")
        // Last
        print("stack.bottom: \(String(describing: stack.bottom))")
        // Count
        print("stack.count: \(stack.count)")
        // IsEmpty
        print("stack.isEmpty: \(stack.isEmpty)")
        
        
        // Second One
        let stack2: Stack<String> = [bOne, bTwo, bThree, bFour, bFive, bSix]
        print("stack2:\n\(stack2)")
        // Dequeue
        print("stack2.pop(): \(String(describing: stack2.pop()))")
        print("stack2.count: \(stack2.count)")
        print("stack2.pop(bThree): \(stack2.pop(bThree))")
        print("stack2.pop(\"unknown\"): \(stack2.pop("unknown"))")
        
        // Peek
        print("stack2.peek(): \(String(describing: stack2.peek()))")
        print("stack2.pop(): \(String(describing: stack2.pop()))")
        print("stack2.peek(): \(String(describing: stack2.peek()))")
        print("stack2: \(stack2)")
        
        // Third One
        let stack3 = Stack<String>(bOne)
        print("stack3: \(stack3)")
        print("stack3.pop(): \(String(describing: stack3.pop()))")
        print("stack3.pop(): \(String(describing: stack3.pop()))")
        stack3.push(bOne)
        stack3.push(bTwo)
        stack3.push(bThree)
        print("stack3.pop(): \(String(describing: stack3.pop()))")
    }
}

