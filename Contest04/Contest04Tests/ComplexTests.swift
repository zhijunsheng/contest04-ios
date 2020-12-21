//
//  ComplexTests.swift
//  Contest04Tests
//
//  Created by Lambert Lin on 2020/12/9.
//  Copyright © 2020 Lambert Lin. All rights reserved.
//

import XCTest

class ComplexTests: XCTestCase {
    
    /*
    xr 1 + 11i xi       - 107 + 43i
 --------------  =------------------- = (1/109) (-107 + 43i)
    yr 3 - 10i  yi       109
     */
    //                       1           11          3           -10
    func complexNumberDivide(xr: Double, xi: Double, yr: Double, yi: Double) {
        let topR = xr * yr + xi * yi
        let topI = -xr * yi + xi * yr
        let bottom = yr * yr + yi * yi
        print("\(topR / bottom) + \(topI / bottom)i")
    }
    
    func testComplexNumberDivide() {
        complexNumberDivide(xr: 1, xi: 11, yr: 3, yi: -10)
        complexNumberDivide(xr: -1, xi: 2, yr: 3, yi: -4)
    }
    
    func testcomplexNumberMultiply() {
        complexNumberMultiply(xr: 1, xi: 2, yr: 3, yi: 4)
        complexNumberMultiply(xr: -3, xi: 5, yr: -1, yi: -7)
    }
    
    func complexNumberMultiply(xr: Double, xi: Double, yr: Double, yi: Double) {
        //       1    3   2    4
        let f = xr * yr - xi * yi // 1 * 3 - 2 * 4
        let b = xi * yr + xr * yi // 1 * 4 + 2 * 3
        print("\(f) + \(b)i")
    }
    
    func testComplexNumberAdd() {
        complexNumberAdd(xr: -3, xi: 5, yr: -1, yi: -7)
    }
    
    func complexNumberAdd(xr: Double, xi: Double, yr: Double, yi: Double) {
        let f = xr + yr
        let b = xi + yi
//        let l = xr - yr + xi - yi
        
        print("\(f) + \(b)i")
        
    }
    
    func testAdd() {
        add(x: 2, y: 4)
    }
    
    func add(x:Int, y:Int){
        let sum = x + y
        print(sum)
        
    }
}
 
