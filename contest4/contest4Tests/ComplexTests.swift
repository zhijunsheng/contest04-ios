//
//  ComplexTests.swift
//  contest4Tests
//
//  Created by Grace Huang on 11/29/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import XCTest
@testable import contest4

class ComplexTests: XCTestCase {
    
    /*
 
     (2 - 8i) * (-7 + 3i) => 10 + 62i
     f  oil
     -14 6i 56i 24
    */

    
    
    func testDivis() {
        divis(topRe: 7, topIm: 17, bottomRe: 2, bottomIm: 3)
    }
    
    /*
        7+17i     2-3i     14-21i
        -----  *  ----  =
        2+3i      2-3i
    */
    
    func divis(topRe: Double, topIm: Double, bottomRe: Double, bottomIm: Double) {
        
        let tf = topRe * bottomRe
        let to = topRe * bottomIm * -1
        let ti = topIm * bottomRe
        let tl = topIm * bottomIm
        
        
        let bReal = bottomRe * bottomRe
        let bImag = bottomIm * bottomIm
        
        let answTopReal = tf + tl
        let answTopImaj = to + ti
        let bottom = bReal + bImag
        
        print ("\(answTopReal / bottom) + \(answTopImaj / bottom)i")
        
        
    }
    
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
