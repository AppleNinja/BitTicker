//
//  DateTests.swift
//  BitTickerTests
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import XCTest
@testable import BitTicker

class DateTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGetISODate() {
        let stringDate = "2014-04-29T14:18:17-0400"
        let date = Date.getISODateWithString(stringDate)
        XCTAssertNotNil(date, "Error getting date from string")
    }
    
    func testGetStringDate() {
        let stringDate = "2014-04-29T14:18:17-0400"
        let date = Date.getISODateWithString(stringDate)
        let stringDateFormat = date?.getStringMMMddyyyyFormat()
        XCTAssertNotNil(stringDateFormat, "Error getting date string format")
    }
    
}
