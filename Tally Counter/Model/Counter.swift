//
//  Counter.swift
//  Tally Counter
//
//  Created by Arrinal Sholifadliq on 25/01/21.
//

import Foundation

struct Counter {
    var num: Int = 0
    
    mutating func plusPressed() {
        num = num + 1
    }
    
    mutating func minusPressed() {
        if num > 0 {
            num = num - 1
        }
    }
    
    mutating func resetPressed() {
        num = 0
    }
}
