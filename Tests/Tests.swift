//
//  Tests.swift
//  NSDate+Comparable
//
//  Created by Florian Schliep on 27.08.15.
//  Copyright (c) 2015 Appiculous UG (haftungsbeschränkt). All rights reserved.
//

import Foundation
import XCTest

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testDates() {
        let past = NSDate().dateByAddingTimeInterval(-3600)
        let now = NSDate()
        let anotherNow = NSDate(timeIntervalSince1970: now.timeIntervalSince1970)
        let future = NSDate().dateByAddingTimeInterval(3600)
        
        XCTAssertLessThan(past, now, "Past < Now")
        XCTAssertEqual(now, anotherNow, "Now == Now") // This only succeeds occasionally
        XCTAssertGreaterThan(future, now, "Future > Now")
    }
    
}
