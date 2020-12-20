//
//  ComplexTests.swift
//  Contest04Tests
//
//  Created by Angie Yan on 2020-12-06.
//  Copyright © 2020 Angie Yan. All rights reserved.
//

import XCTest

class ComplexTests: XCTestCase {
    
    func testSubtractComplex() {
        subtractComplex(r: 13, i: -9, a: 2, b: -7)
    }
    
    /*
     (13 - 9i) - (2 - 7i) = 13 - 2 - 9i + 7i = 11 + -2i       5i
     
     (13 - 9i) + (2 - 7i) = 13 + 2 - 9i - 7i
     = 15 - 16i
     */
 
    func subtractComplex(r: Int, i: Int, a: Int, b: Int) {
        let real = r - a
        let imaginary = i - b
        print("\(real) - \(imaginary)i")
    }
    
    func testAddComplex() {
        addComplex(r: 13, i: -9, a: 2, b: -7)
    }
    
    func addComplex(r: Int, i: Int, a: Int, b: Int) {

        let real = r + a
        let imaginary = i + b
        print("\(real) \(imaginary)i") // 1 + 2i
    }
    
    func multiplyComplex(r: Int, b: Int, c: Int, a: Int) {
        let real = r - b
        let imaginary = c + a
        let product = (r - b) * (c + a)
        // r * (c + a) - b * (c + a)
        
        print("\(r * c + b * a + (r * a - b * c))")
    }
    
    
    func testMultiplyComplex() {
         multiplyComplex(r: 3, b: -8, c: 7, a: -10) // (3 + 7) (-8i - 10i)
       
        // (3 + 8i) * (7 - 10i) = 3(7 - 10i) + 8i(7 - 10i)
        // = 21 - 30i + 56i + 80
        // = 101 - 30i + 56i
        // = 101 + 26i
    }
    
    /*
     
     7 + 100 = 107
     
     */
    
    func testAdd() {
        let sum = add(a: 7, b: 100)
        print("\(sum)")
        
    }

    func add(a: Int, b: Int) -> Int {
        let a = 5
        let b = 7
        print(a + b)
        
        return a + b
        
    }
    
    func subtract(a: Int, b: Int) -> Int {
        let a = 5
        let b = 7
        print(a - b)
        
        return a - b
        
    }
    
}

