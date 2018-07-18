//
//  LumosTests.swift
//  LumosTests
//
//  Created by Suyash Shekhar on 16/7/18.
//  Copyright © 2018 io.sushinoya. All rights reserved.
//

import XCTest
@testable import Lumos

class LumosTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let test = Testable()
        guard let variable = test.lumos.getInstanceVariable(withName: "name") else { return }
        print(variable)
        XCTAssert(true)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

class Testable: NSObject {
    let name: String
    
    override init() {
        self.name = "Testable"
    }
}
