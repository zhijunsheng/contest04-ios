//
//  ComplexTests.swift
//  TankTests
//
//  Created by Felix Lo on 2020/11/26.
//  Copyright © 2020 Felix Lo. All rights reserved.
//

import XCTest

class ComplexTests: XCTestCase {
    
    func testAdd() {
        add(re1: -87, im1: 1, re2: -5, im2: 20)
        let result = add2(c1: ComplexNumber(re: 18, im: 4), c2: ComplexNumber(re: -11, im: 23))
        print(result)
    }
    
    /*
     
     (1 + 2i)/(-8 + 7i) =
     
     */
    func add(re1: Double, im1: Double, re2: Double, im2: Double) {
        let sum1 = re1 + re2
        let sum2 = im1 + im2
        let sum = "\(sum1) + \(sum2)i "
        print(sum)
    }
    
    func add2(c1: ComplexNumber, c2: ComplexNumber) -> ComplexNumber {
        let sum1 = c1.re + c2.re
        let sun2 = c1.im + c2.im
        return ComplexNumber(re: sum1, im: sun2)
    }
    
    func subtract(c1: ComplexNumber, c2: ComplexNumber) -> ComplexNumber {
        let difference1 = c1.re - c2.re
        let difference2 = c1.im - c2.im
        return ComplexNumber(re: difference1, im: difference2)
    }
    
    func testSubtract() {
        let result = subtract(c1: ComplexNumber(re: 7, im: -10), c2: ComplexNumber(re: 3, im: 30))
        print(result)
    }
    
    func multiply(re1: Double, im1: Double, re2: Double, im2: Double) {
        let product1 =  re1 * re2 - im1 * im2
        let product2 = im1 * re2 + re1 * im2
        let answer = "\(product1) + \(product2)i"
        print(answer)
    }
    
    func multiply2(c1: ComplexNumber, c2: ComplexNumber) -> ComplexNumber  {
        let product1 = c1.re * c2.re - c1.im * c2.im
        let product2 = c1.im * c2.re + c1.re * c2.im
        let answer = ComplexNumber(re: product1, im: product2)
        return answer
    }
    
    func testDivide() {
        let result = divide(c1: ComplexNumber(re: 4, im: 2), c2: ComplexNumber(re: -1, im: 1))
        print(result)
    }
    
    func divide(c1: ComplexNumber, c2: ComplexNumber) -> ComplexNumber {
        // numerator multiplication
        let product1n = c1.re * c2.re + c1.im * c2.im
        let product2n = c1.im * c2.re - c1.re * c2.im
        
        // denominator
        
        let product1d = c2.re * c2.re
        let product2d = c2.im * c2.im
        let productd = product1d + product2d
        
        print("\(product1n/productd) + \(product2n/productd)i")
        let answer = ComplexNumber(re: product1n/productd, im: product2n/productd)
        return answer
    }
    
    /*
     (a + b)(a - b) = A^ - B^
     (a ± b)^2 = A^ ± 2AB + B^
     
     */
    
    func testMultiply() {
        let result = multiply2(c1: ComplexNumber(re: 1, im: 2), c2: ComplexNumber(re: -8, im: 7))
        print(result)
    }
}

struct ComplexNumber: CustomStringConvertible {
    var description: String {
        return "\(re) + \(im)i"
    }
    
    let re: Double
    let im: Double
}
