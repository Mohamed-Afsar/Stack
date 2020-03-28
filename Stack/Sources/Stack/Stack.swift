//
//  Stack.swift
//  Stack
//
//  Created by Mohamed Afsar on 28/03/20.
//  Copyright © 2020 Mohamed Afsar. All rights reserved.
//

import DoublyLinkedList

open class Stack<T: Equatable>: Stackable, ExpressibleByArrayLiteral {
    // MARK: Public IVars
    public var top: T? { return self.list.first }
    public var bottom: T? { return self.list.last }
    public var count: Int { return self.list.count }
    public var isEmpty: Bool { return self.list.isEmpty }
    
    // MARK: Private IVars
    private let list = DoublyLinkedList<T>()
    
    // MARK: Initialization
    required public convenience init(arrayLiteral elements: T...) {
        self.init()
        self.list.prepend(elements)
    }
    
    public convenience init(_ element: T) {
        self.init()
        self.list.prepend(element)
    }
    
    public convenience init(_ elements: [T]) {
        self.init()
        self.list.prepend(elements)
    }

    // MARK: Open Manipulating Functions
    open func push(_ element: T) {
        self.list.prepend(element)
    }
    
    open func push(_ elements: [T]) {
        self.list.prepend(elements)
    }
    
    open func pop() -> T? {
        guard let element = self.list.first else {
            return nil
        }
        self.list.removeFirst()
        return element
    }
    
    open func pop(_ element: T) -> Bool {
        return self.list.remove(element)
    }
    
    // MARK: Open Reading Functions
    open func peek() -> T? {
        return self.list.first
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        var desc = "----Stack----"
        self.list.forEach { desc += "\n" + String(describing: $0) }
        desc += "\n" + "-------------"
        return desc
    }
}
