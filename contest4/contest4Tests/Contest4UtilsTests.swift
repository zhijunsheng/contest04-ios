//
//  Contest4UtilsTests.swift
//  contest4Tests
//
//  Created by Grace Huang on 12/13/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import XCTest
@testable import contest4

class Contest4UtilsTests: XCTestCase {

    func testRealAngle() {
        XCTAssertTrue(abs(realAngle(angle: 2.5 * CGFloat.pi) - 0.5 * CGFloat.pi) < 0.001)
        
        XCTAssertTrue(abs(realAngle(angle: -0.5 * CGFloat.pi) - 1.5 * CGFloat.pi) < 0.001)
        
        XCTAssertTrue(abs(realAngle(angle: -2.5 * CGFloat.pi) - 1.5 * CGFloat.pi) < 0.001)
        
        print(realAngle(angle: -0.5 * CGFloat.pi))
        print(1.5 * CGFloat.pi)
        
    }
    
    func testRealAngleVsTruncRemain() {
        let x: CGFloat = 7
        let y = 2 * CGFloat.pi
        
        XCTAssertTrue(abs(realAngle(angle: x) - x.truncatingRemainder(dividingBy: y)) < 0.001)
        
    }
}
