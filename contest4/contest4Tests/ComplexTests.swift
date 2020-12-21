//
//  ComplexTests.swift
//  contest4Tests
//
//  Created by Grace Huang on 11/29/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import XCTest

class ComplexTests: XCTestCase {
    
    /*
 
     (2 - 8i) * (-7 + 3i) => 10 + 62i
     f  oil
     -14 6i 56i 24
    */
    
    func testMult() {
        mult(cRe: 2, cIm: -8, dRe: -7, dIm: 3)
    }
    
    func mult(cRe: Double, cIm: Double, dRe: Double, dIm: Double) {
        let f = cRe * dRe
        let o = cRe * dIm
        let i = cIm * dRe
        let l = cIm * dIm * -1
        
        print("\(f + l) + \(o + i)i")
    }
    
    func testAdd() {
        add(cRe: 2, cIm: -8, dRe: -7, dIm: 3)
    }
    
    func add(cRe: Double, cIm: Double, dRe: Double, dIm: Double) {
        let solutionRe = cRe + dRe
        let solutionIm = cIm + dIm
        
        if solutionIm > 0 {
            print("\(solutionRe) + \(solutionIm)i")
        } else {
            print("\(solutionRe) \(solutionIm)i")
        }
        
    }
    
    
}
