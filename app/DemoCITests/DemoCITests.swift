//
//  DemoCITests.swift
//  DemoCITests
//
//  Created by Alex on 11/1/16.
//  Copyright © 2017 AAA. All rights reserved.
//

import XCTest
@testable import DemoCI

class DemoCITests: XCTestCase {
    func testUserDefaults() {
        XCTAssertFalse(UserDefaults.hasOnboarded)
    }
}
