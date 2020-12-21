//
//  Contest4Utils.swift
//  contest4
//
//  Created by Grace Huang on 12/13/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

// [0, 2π)
// [-π, π)
public func realAngle(angle: CGFloat) -> CGFloat {
    
    if angle > 0 {
        let newAngle = CGFloat(Int((abs(angle * 1000))) % Int(2000 * CGFloat.pi)) / 1000
        return newAngle
    } else if angle < 0 {
        for i in 0..<10000 {
            let posAngle = angle + 2 * CGFloat.pi * CGFloat(i)
            
            if posAngle > 0 {
                let newAngle = CGFloat(Int((abs(posAngle * 1000))) % Int(2000 * CGFloat.pi)) / 1000
                return newAngle
            }
        }
        
    }
    
    return angle
}

/*
 
 3.777 π => 1.777 π
 
 9.5555 => 5.3333
 
 9 % 6 = 3
 
 95555 % 62811 => 33111
 3.3111
 
 
 */
