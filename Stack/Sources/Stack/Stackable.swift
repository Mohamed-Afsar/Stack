//
//  Stackable.swift
//  Stack
//
//  Created by Mohamed Afsar on 28/03/20.
//  Copyright © 2020 Mohamed Afsar. All rights reserved.
//

import Foundation

public protocol Stackable {
    // Types
    associatedtype E
    
    // Variables
    var top: E? { get } // Element at the top of the Stack
    var bottom: E? { get } // Element at the bottom of the Stack
    var count: Int { get } // Items count
    var isEmpty: Bool { get } // Empty state
    
    // Functions
    func push(_ key: E) // Adds an element
    func pop() -> E? // Removes an element
    func peek() -> E? // Element at the top of Stack
}
