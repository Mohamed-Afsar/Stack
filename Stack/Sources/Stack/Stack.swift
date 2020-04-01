//
//  Stack.swift
//  Stack
//
//  Created by Mohamed Afsar on 28/03/20.
//  Copyright © 2020 Mohamed Afsar. All rights reserved.
//

import DoublyLinkedList

open class Stack<T: Equatable>: Stackable, ExpressibleByArrayLiteral, CustomStringConvertible {
    // MARK: Public IVars
    open var top: T? { self._top }
    open var bottom: T? { self._bottom }
    open var count: Int { self._count }
    open var isEmpty: Bool { self._isEmpty }
    
    // CustomStringConvertible
    open var description: String { self._description }
    
    // MARK: Private IVars
    private let list = DoublyLinkedList<T>()
    
    // MARK: Initialization
    required public convenience init(arrayLiteral elements: T...) {
        self.init()
        self._push(elements)
    }
    
    public convenience init(_ element: T) {
        self.init()
        self._push(element)
    }
    
    public convenience init(_ elements: [T]) {
        self.init()
        self._push(elements)
    }

    // MARK: Open Manipulating Functions
    open func push(_ element: T) {
        self._push(element)
    }
    
    open func push(_ elements: [T]) {
        self._push(elements)
    }
    
    open func pop() -> T? {
        return self._pop()
    }
    
    open func pop(_ element: T) {
        self._pop(element)
    }
    
    // MARK: Open Reading Functions
    open func peek() -> T? {
        self._peek()
    }
}

// MARK: Helper Functions
private extension Stack {
    // MARK: Private IVars
    var _top: T? { self.list.first }
    var _bottom: T? { self.list.last }
    var _count: Int { self.list.count }
    var _isEmpty: Bool { self.list.isEmpty }
    
    // CustomStringConvertible
    var _description: String {
        var desc = "----Stack----"
        self.list.forEach { desc += "\n" + String(describing: $0) }
        desc += "\n" + "-------------"
        return desc
    }

    // MARK: Open Manipulating Functions
    func _push(_ element: T) {
        self.list.prepend(element)
    }
    
    func _push(_ elements: [T]) {
        self.list.prepend(elements)
    }
    
    func _pop() -> T? {
        guard let element = self.list.first else {
            return nil
        }
        self.list.removeFirst()
        return element
    }
    
    func _pop(_ element: T) {
        self.list.remove(element)
    }
    
    // MARK: Open Reading Functions
    func _peek() -> T? {
        return self.list.first
    }
}
