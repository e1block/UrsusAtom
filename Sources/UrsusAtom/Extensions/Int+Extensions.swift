//
//  File.swift
//  
//
//  Created by  on 2022-01-04.
//

import Foundation

/// The parity of an integer: even or odd.
public enum Parity {

    /// Even parity.
    case even

    /// Odd parity.
    case odd
}

// MARK: - Helpers

extension Int {

    /// The number's parity.
    public var parity: Parity {
        return self % 2 == 0 ? .even : .odd
    }

    /// The number is even.
    public var isEven: Bool {
        return parity == .even
    }

    /// The number is odd.
    public var isOdd: Bool {
        return parity == .odd
    }

}
