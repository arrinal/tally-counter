//
//  Tally_CounterTests.swift
//  Tally CounterTests
//
//  Created by Arrinal Sholifadliq on 25/01/21.
//

import XCTest
@testable import Tally_Counter

class Tally_CounterTests: XCTestCase {
    
    var counter: Counter!

    override func setUpWithError() throws {
        counter = Counter()
    }

    override func tearDownWithError() throws {
        counter = nil
    }

    func testMinus() {
        counter.num = 0
        counter.minusPressed()
        XCTAssertEqual(counter.num, 0)
    }
    
    func testReset() {
        counter.num = 20
        counter.resetPressed()
        XCTAssertEqual(counter.num, 0)
    }

}
