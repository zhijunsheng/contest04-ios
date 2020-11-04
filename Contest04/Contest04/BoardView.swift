//
//  BoardView.swift
//  Contest04
//
//  Created by Angie Yan on 2020-10-22.
//  Copyright © 2020 Angie Yan. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    var centreXDelta: CGFloat = 0
    

    override func draw(_ rect: CGRect) {
        let topTrack = UIBezierPath()
        topTrack.move(to: CGPoint(x: 150, y: 400))
        topTrack.addLine(to: CGPoint(x: 450, y: 400))
        topTrack.stroke()
        
        drawWheel()
        
        let bottomTrack = UIBezierPath()
        bottomTrack.move(to: CGPoint(x: 150, y: 430 + 30))
        bottomTrack.addLine(to: CGPoint(x: 450, y: 430 + 30))
        bottomTrack.stroke()
        
        let body = UIBezierPath(rect: CGRect(x: 170, y: 320, width: 250, height: 80))
        body.stroke()
        
        let upperPart = UIBezierPath(rect: CGRect(x: 220, y: 270, width: 150, height: 50))
        upperPart.stroke()
        
        let turret = UIBezierPath(arcCenter: CGPoint(x: 300, y: 270), radius: 40, startAngle: 0, endAngle: CGFloat.pi, clockwise: false)
        turret.stroke()
        
        let gunPart = UIBezierPath()
        gunPart.move(to: CGPoint(x: 309, y: 230))
        gunPart.addLine(to: CGPoint(x: 400, y: 150))
        gunPart.move(to: CGPoint(x: 335, y: 250))
        gunPart.addLine(to: CGPoint(x: 426, y: 180))
        gunPart.stroke()
        
        let gunTip = UIBezierPath()
        gunTip.move(to: CGPoint(x: 383, y: 130))
        gunTip.addLine(to: CGPoint(x: 410, y: 105))
        gunTip.addLine(to: CGPoint(x: 455, y: 167))
        gunTip.addLine(to: CGPoint(x: 435, y: 192))
        gunTip.close()
        gunTip.stroke()

        
        
    
        
        // radians ~ degress
        // 2π radians = 360 degrees
        // 1 km = 1000 m
        // radian ? radius
    }
    
    func drawWheel() {
        let wheel = UIBezierPath(arcCenter: CGPoint(x: 150, y: 430), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        wheel.stroke()
        
        let wheelArc = UIBezierPath(arcCenter: CGPoint(x: 150, y: 430), radius: 30, startAngle: 0 + centreXDelta / 20, endAngle: 0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        wheelArc.addLine(to: CGPoint(x: 150, y: 430))
        wheelArc.close()
        wheelArc.fill()
        
        let secondWheelArc = UIBezierPath(arcCenter: CGPoint(x: 150, y: 430), radius: 30, startAngle: CGFloat.pi + centreXDelta / 20, endAngle: -0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        secondWheelArc.addLine(to: CGPoint(x: 150, y: 430))
        secondWheelArc.close()
        secondWheelArc.fill()
        
        let wheel1 = UIBezierPath(arcCenter: CGPoint(x: 250, y: 430), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        wheel1.stroke()
        
        let wheel1Arc = UIBezierPath(arcCenter: CGPoint(x: 250, y: 430), radius: 30, startAngle: 0 + centreXDelta / 20, endAngle: 0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        wheel1Arc.addLine(to: CGPoint(x: 250, y: 430))
        wheel1Arc.close()
        wheel1Arc.fill()
        
        let secondWheel1Arc = UIBezierPath(arcCenter: CGPoint(x: 250, y: 430), radius: 30, startAngle: CGFloat.pi + centreXDelta / 20, endAngle: -0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        secondWheel1Arc.addLine(to: CGPoint(x: 250, y: 430))
        secondWheel1Arc.close()
        secondWheel1Arc.fill()
        
        let wheel2 = UIBezierPath(arcCenter: CGPoint(x: 350, y: 430), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        wheel2.stroke()
        
        let wheel2Arc = UIBezierPath(arcCenter: CGPoint(x: 350, y: 430), radius: 30, startAngle: 0 + centreXDelta / 20, endAngle: 0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        wheel2Arc.addLine(to: CGPoint(x: 350, y: 430))
        wheel2Arc.close()
        wheel2Arc.fill()
        
        let secondWheel2Arc = UIBezierPath(arcCenter: CGPoint(x: 350, y: 430), radius: 30, startAngle: CGFloat.pi + centreXDelta / 20, endAngle: -0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        secondWheel2Arc.addLine(to: CGPoint(x: 350, y: 430))
        secondWheel2Arc.close()
        secondWheel2Arc.fill()
        
        let wheel3 = UIBezierPath(arcCenter: CGPoint(x: 450, y: 430), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        wheel3.stroke()
        
        let wheel3Arc = UIBezierPath(arcCenter: CGPoint(x: 450, y: 430), radius: 30, startAngle: 0 + centreXDelta / 20, endAngle: 0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        wheel3Arc.addLine(to: CGPoint(x: 450, y: 430))
        wheel3Arc.close()
        wheel3Arc.fill()
        
        let secondWheel3Arc = UIBezierPath(arcCenter: CGPoint(x: 450, y: 430), radius: 30, startAngle: CGFloat.pi + centreXDelta / 20, endAngle: -0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        secondWheel3Arc.addLine(to: CGPoint(x: 450, y: 430))
        secondWheel3Arc.close()
        secondWheel3Arc.fill()
    }
}

/*
 
 N: 3, 10
 Z: -9, 51, 0,
 Q: 1.5, 7, 13, 6.77777..., 4/9
 R: π, √2
 C: ?
 
 */
