//
//  BoardView.swift
//  Contest04
//
//  Created by Angie Yan on 2020-10-22.
//  Copyright © 2020 Angie Yan. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    var centreXDelta: CGFloat = -200
    
    override func draw(_ rect: CGRect) {
        drawGun()
        drawBody()
        drawTrack()
        drawWheel()
    }
    
    func drawTrack() {
        let topTrack = UIBezierPath()
        topTrack.move(to: CGPoint(x: 150 + centreXDelta, y: 400))
        topTrack.addLine(to: CGPoint(x: 450 + centreXDelta, y: 400))
        topTrack.lineWidth = 15
        topTrack.stroke()
        
        let bottomTrack = UIBezierPath()
        bottomTrack.move(to: CGPoint(x: 150 + centreXDelta, y: 430 + 30))
        bottomTrack.addLine(to: CGPoint(x: 450 + centreXDelta, y: 430 + 30))
        bottomTrack.lineWidth = 15
        bottomTrack.stroke()
        
        let curve = UIBezierPath(arcCenter: CGPoint(x: 150 + centreXDelta, y: 430), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        curve.lineWidth = 15
        curve.stroke()
        
        let curve1 = UIBezierPath(arcCenter: CGPoint(x: 450 + centreXDelta, y: 430), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        curve1.lineWidth = 15
        curve1.stroke()
        
        let fillIn = UIBezierPath(rect: CGRect(x: 150 + centreXDelta, y: 400, width: 150 * 2, height: 30 * 2))
        #colorLiteral(red: 0.2006855607, green: 0.2007260025, blue: 0.2006802261, alpha: 1).setFill()
        fillIn.fill()
    }

    func drawBody() {
        let body = UIBezierPath(rect: CGRect(x: 170 + centreXDelta, y: 320, width: 250, height: 80))
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setFill()
        body.fill()
        body.stroke()
        
        let upperPart = UIBezierPath()
        upperPart.move(to: CGPoint(x: 220 + centreXDelta, y: 270))
        upperPart.addLine(to: CGPoint(x: 370 + centreXDelta, y: 270))
        upperPart.addLine(to: CGPoint(x: 390 + centreXDelta, y: 320))
        upperPart.addLine(to: CGPoint(x: 205 + centreXDelta, y: 320))
        upperPart.close()
        upperPart.fill()
        upperPart.stroke()
    }
    
    func drawGun() {
        let turret = UIBezierPath(arcCenter: CGPoint(x: 300 + centreXDelta, y: 270), radius: 40, startAngle: 0, endAngle: CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1).setFill()
        turret.fill()
        turret.stroke()
        
        let gunPart = UIBezierPath()
        gunPart.move(to: CGPoint(x: 309 + centreXDelta, y: 230))
        gunPart.addLine(to: CGPoint(x: 400 + centreXDelta, y: 150))
        gunPart.addLine(to: CGPoint(x: 426 + centreXDelta, y: 180))
         gunPart.addLine(to: CGPoint(x: 335 + centreXDelta, y: 250))
        gunPart.close()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setFill()
        gunPart.fill()
        gunPart.stroke()
        
        let gunTip = UIBezierPath()
        gunTip.move(to: CGPoint(x: 383 + centreXDelta, y: 130))
        gunTip.addLine(to: CGPoint(x: 410 + centreXDelta, y: 105))
        gunTip.addLine(to: CGPoint(x: 455 + centreXDelta, y: 167))
        gunTip.addLine(to: CGPoint(x: 435 + centreXDelta, y: 192))
        gunTip.close()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setFill()
        gunTip.fill()
        gunTip.stroke()
    }
    
    func drawWheel() {
        let wheel = UIBezierPath(arcCenter: CGPoint(x: 150 + centreXDelta, y: 430), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setFill()
        wheel.stroke()
        wheel.fill()
        
        let wheelArc = UIBezierPath(arcCenter: CGPoint(x: 150 + centreXDelta, y: 430), radius: 30, startAngle: 0 + centreXDelta / 20, endAngle: 0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        wheelArc.addLine(to: CGPoint(x: 150 + centreXDelta, y: 430))
        wheelArc.close()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        wheelArc.fill()
        
        let secondWheelArc = UIBezierPath(arcCenter: CGPoint(x: 150 + centreXDelta, y: 430), radius: 30, startAngle: CGFloat.pi + centreXDelta / 20, endAngle: -0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        secondWheelArc.addLine(to: CGPoint(x: 150 + centreXDelta, y: 430))
        secondWheelArc.close()
        secondWheelArc.fill()
        
        let wheel1 = UIBezierPath(arcCenter: CGPoint(x: 250 + centreXDelta, y: 430), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setFill()

        wheel1.stroke()
        wheel1.fill()
        
        let wheel1Arc = UIBezierPath(arcCenter: CGPoint(x: 250 + centreXDelta, y: 430), radius: 30, startAngle: 0 + centreXDelta / 20, endAngle: 0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        wheel1Arc.addLine(to: CGPoint(x: 250 + centreXDelta, y: 430))
        wheel1Arc.close()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        wheel1Arc.fill()
        
        let secondWheel1Arc = UIBezierPath(arcCenter: CGPoint(x: 250 + centreXDelta, y: 430), radius: 30, startAngle: CGFloat.pi + centreXDelta / 20, endAngle: -0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        secondWheel1Arc.addLine(to: CGPoint(x: 250 + centreXDelta, y: 430))
        secondWheel1Arc.close()
        secondWheel1Arc.fill()
        
        let wheel2 = UIBezierPath(arcCenter: CGPoint(x: 350 + centreXDelta, y: 430), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setFill()
        wheel2.stroke()
        wheel2.fill()
        
        let wheel2Arc = UIBezierPath(arcCenter: CGPoint(x: 350 + centreXDelta, y: 430), radius: 30, startAngle: 0 + centreXDelta / 20, endAngle: 0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        wheel2Arc.addLine(to: CGPoint(x: 350 + centreXDelta, y: 430))
        wheel2Arc.close()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        wheel2Arc.fill()
        
        let secondWheel2Arc = UIBezierPath(arcCenter: CGPoint(x: 350 + centreXDelta, y: 430), radius: 30, startAngle: CGFloat.pi + centreXDelta / 20, endAngle: -0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        secondWheel2Arc.addLine(to: CGPoint(x: 350 + centreXDelta, y: 430))
        secondWheel2Arc.close()
        secondWheel2Arc.fill()
        
        let wheel3 = UIBezierPath(arcCenter: CGPoint(x: 450 + centreXDelta, y: 430), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setFill()
        wheel3.stroke()
        wheel3.fill()
        
        let wheel3Arc = UIBezierPath(arcCenter: CGPoint(x: 450 + centreXDelta, y: 430), radius: 30, startAngle: 0 + centreXDelta / 20, endAngle: 0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        wheel3Arc.addLine(to: CGPoint(x: 450 + centreXDelta, y: 430))
        wheel3Arc.close()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        wheel3Arc.fill()
        
        let secondWheel3Arc = UIBezierPath(arcCenter: CGPoint(x: 450 + centreXDelta, y: 430), radius: 30, startAngle: CGFloat.pi + centreXDelta / 20, endAngle: -0.5 * CGFloat.pi + centreXDelta / 20, clockwise: true)
        secondWheel3Arc.addLine(to: CGPoint(x: 450 + centreXDelta, y: 430))
        secondWheel3Arc.close()
        secondWheel3Arc.fill()
    }
}
