//
//  ComplexTests.swift
//  contest04Tests
//
//  Created by Peter Shi on 2020-11-20.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import XCTest

class ComplexTests: XCTestCase {
    
    // (3 + 5i) +-x÷ (-7 + 2i)
    // -4 + 7i
    // 10 + 3i
    // -21 -10  6i -35i
    //
    
    func testComplexAddition() {
        let result = add(complexNum1: Complex(rE: 245, iN: 876), complexNum2: Complex(rE: 67, iN: 575))
        
        print(result)
        
        print(q16())
    }
    
    func testComplexSubtraction() {
        
    }
    
    func testComplexMultiplication() {
        let result = multiply(complexNum1: Complex(rE: 67, iN: 85), complexNum2: Complex(rE: 76, iN: 94))
        
        print(result)
    }
    
    func testComplexDivision() {
        let result = divide(complexNum1: Complex(rE: 23, iN: 68), complexNum2: Complex(rE: 45, iN: 120))
        
        print(result)
    }
    
    func add(complexNum1: Complex, complexNum2: Complex) -> Complex {
        return Complex(rE: complexNum1.rE + complexNum2.rE, iN: complexNum1.iN + complexNum2.iN)
    }
    
    func multiply(complexNum1: Complex, complexNum2: Complex) -> Complex {
        return Complex(rE: complexNum1.rE * complexNum2.rE + -complexNum1.iN * complexNum2.iN, iN: complexNum1.iN * complexNum2.rE + complexNum1.rE * complexNum2.iN)
    }
    
    // (2 + i) / (1 - i) =
    func divide(complexNum1: Complex, complexNum2: Complex) -> Complex {
        let topNum = multiply(complexNum1: complexNum1, complexNum2: complexNum2.conjugate)
        let bottomTriangled = pow(complexNum2.rE, 2) - pow(complexNum2.iN, 2)
        return Complex(rE: topNum.rE / bottomTriangled, iN: topNum.iN / bottomTriangled)
    }
    
    func q16() -> ([Int], [Int]) {
        var list: [Int] = []
        var diff: [Int] = []
        var num: Int = 456
        for _ in 1...400 {
            list.append(num)
            diff.append((num + (num / 1000) + ((num % 1000) / 100) + ((num % 100) / 10) + num % 10) - num)
            num = num + (num / 1000) + ((num % 1000) / 100) + ((num % 100) / 10) + num % 10
        }
        return (list, diff)
    }
}

struct Complex: CustomStringConvertible {
    var description: String {
        if rE > 0 || rE < 0 {
            if iN > 0 {
                return "\(rE) + \(iN)i"
            } else if iN == 0 {
                return "\(rE)"
            } else {
                return "\(rE) - \(-iN)i"
            }
        } else if rE == 0 {
            if iN > 0 || iN < 0 {
                return "\(iN)i"
            } else if iN == 0 {
                return "0"
            }
        }
        return "idk???"
    }
    
    var rE: CGFloat
    var iN: CGFloat
    
    var conjugate: Complex {
        Self(rE: rE, iN: -iN)
    }
}
