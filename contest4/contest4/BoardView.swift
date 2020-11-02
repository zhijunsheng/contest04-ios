//
//  BoardView.swift
//  contest4
//
//  Created by Grace Huang on 10/18/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class BoardView: UIView {
    var movement: CGFloat = -300
    var rocketMovement: CGFloat = -300
    let tankBodyWidth: CGFloat = 150
    let tankBodyHeight: CGFloat = 75
    let wheelHeight: CGFloat = 40
    let wheelWidth: CGFloat = 200
    let wheelRadius: CGFloat = 20
    override func draw(_ rect: CGRect) {
        if rocketMovement > bounds.width - 55 {
            rocketMovement = movement
        }
        if movement > bounds.width - 55{
            movement = -300
            rocketMovement = -300
            rocket(rocketMovement: rocketMovement)
            tank(movement: movement)
            wheel(movement: movement)
            return
        }
        rocket(rocketMovement: rocketMovement)
        tank(movement: movement)
        wheel(movement: movement)
    }
    func rocket(rocketMovement: CGFloat) {
        let rocket = UIBezierPath(roundedRect: CGRect(x: 50 + wheelWidth / 2 - tankBodyWidth / 2 + rocketMovement, y: bounds.height - wheelHeight - tankBodyHeight + tankBodyHeight / 2 - 8, width: tankBodyWidth / 4, height: 16), cornerRadius: 3)
        #colorLiteral(red: 0.1037014052, green: 0.04392455518, blue: 0.04877308756, alpha: 1).setFill()
        rocket.fill()
        rocket.lineWidth = 2
        rocket.stroke()
    }
    func tank(movement: CGFloat) {
        let gun = UIBezierPath(roundedRect: CGRect(x: 35 + wheelRadius + tankBodyWidth + movement, y: bounds.height - wheelHeight - tankBodyHeight + tankBodyHeight / 2 - 8, width: tankBodyWidth / 2, height: 16), cornerRadius: 3)
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setFill()
        gun.fill()
        gun.lineWidth = 2
        gun.stroke()
        
        let cap = UIBezierPath(roundedRect: CGRect(x: 50 + wheelWidth / 2 - (tankBodyWidth - 40) / 2 + movement, y: bounds.height - wheelHeight - tankBodyHeight - 10, width: tankBodyWidth - 40, height: 10), cornerRadius: 3)
        cap.fill()
        cap.lineWidth = 2
        cap.stroke()
        // 50 + wheelWidth / 2 - bodyWidth / 2
        let body = UIBezierPath(roundedRect: CGRect(x: 50 + wheelWidth / 2 - tankBodyWidth / 2 + movement, y: bounds.height - wheelHeight - tankBodyHeight, width: tankBodyWidth, height: tankBodyHeight), cornerRadius: 20)
        body.lineWidth = 2
        body.fill()
        body.stroke()
    }

    func wheel(movement: CGFloat) {
        let wheelBody = UIBezierPath(roundedRect: CGRect(x: 50 + movement, y: bounds.height - wheelHeight, width: wheelWidth, height: wheelHeight), cornerRadius: wheelRadius)
        wheelBody.lineWidth = 2
        wheelBody.stroke()
        for i in 0..<5 {
            wheelCircle(x: 50 + movement + wheelRadius + wheelRadius * CGFloat(i * 2), y: bounds.height - wheelRadius)
        }
    }
    
    func wheelCircle(x: CGFloat, y: CGFloat) {
        let circle = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: 20, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle.stroke()
        
        let rotation = movement / 25
        let quarter = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: 20, startAngle: 0 + rotation, endAngle: 2 * CGFloat.pi / 4 + rotation, clockwise: true)
        let quarter2 = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: 20, startAngle: 0 - (2 * CGFloat.pi / 4) + rotation, endAngle: 0 - 2 * (2 * CGFloat.pi / 4) + rotation, clockwise: false)
        quarter.addLine(to: CGPoint(x: x, y: y))
        quarter.close()
        quarter.fill()
        quarter.stroke()
        quarter2.addLine(to: CGPoint(x: x, y: y))
        quarter2.close()
        quarter2.fill()
        quarter2.stroke()
    }
    
}

/*
 
 N: 1,2,3,4,5,6
 Z: 1,2,3,4,5,6,-1,-2,0
 Q: 1,2,3,4,5,6,-1,-2,0,sqrt(4),5/2,0.6666...
 R: π, sqrt(2),√40, e
 C: i, √(-4)
 
 
 
 
 */
