//
//  CanvasView.swift
//  militaryTank
//
//  Created by Elaine on 2020-10-13.
//

import UIKit

class CanvasView: UIView {

    var deltaX: CGFloat = 0
    
    override func draw(_ rect: CGRect) {
        drawTank()
        drawWheelAndBottomPart()
        
//        let arc = UIBezierPath(arcCenter: CGPoint(x: 100, y: 100), radius: 55, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
//        arc.stroke()
//
//        let arc2 = UIBezierPath(arcCenter: CGPoint(x: 100, y: 100), radius: 25, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
//        arc2.stroke()
//
//        for i in 0..<6 {
//            let arc3 = UIBezierPath(arcCenter: CGPoint(x: 100, y: 100), radius: 55, startAngle: 0 + CGFloat (i) + 1.5 * CGFloat.pi, endAngle: 0.4  + CGFloat (i) + 1.5 * CGFloat.pi, clockwise: true)
//            arc3.addLine(to: CGPoint(x: 100, y: 100))
//            arc3.close()
//            #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
//            arc3.stroke()
//        }
    }
    
    /*
     
     radius
     
     radians ~ degrees
     
     */
    func drawOneWheel(distance: CGFloat) {
        let arc4 = UIBezierPath(arcCenter: CGPoint(x: 100 + distance + deltaX, y: 600), radius: 5, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        arc4.stroke()
        
        for i in 0..<5 {
            let arc6 = UIBezierPath(
                arcCenter: CGPoint(x: 100 + distance + deltaX , y: 600),
                radius: 35,
                startAngle: 0 * CGFloat.pi + 0.4 * CGFloat.pi * CGFloat(i) + deltaX / 30,
                endAngle: 0.4 * CGFloat.pi + 0.4 * CGFloat.pi * CGFloat(i) + deltaX / 30,
                clockwise: true)
            arc6.addLine(to: CGPoint(x: 100 + distance + deltaX, y: 600))
            arc6.close()
            #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
            arc6.stroke()
        }
        let arc5 = UIBezierPath(arcCenter: CGPoint(x: 100 + distance + deltaX, y: 600), radius: 35, startAngle: 0 + deltaX / 30, endAngle: 2 * CGFloat.pi + deltaX / 30, clockwise: true)
        arc5.stroke()
    }
    
    func drawWheelAndBottomPart() {
        
        let connectorStroke = UIBezierPath()
        connectorStroke.move(to: CGPoint(x: 100 + deltaX, y: 630))
        connectorStroke.addLine(to: CGPoint(x: 400 + deltaX, y: 630))
        connectorStroke.stroke()
        
        drawOneWheel(distance: 0)
        drawOneWheel(distance: 100)
        drawOneWheel(distance: 200)
        drawOneWheel(distance: 300)
    }
    
    
    
    func drawTank() {
        #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        
        let tankGunTip = UIBezierPath(rect: CGRect(x: 650 + deltaX  , y: 290, width: 50, height: 70))
        tankGunTip.fill()
        tankGunTip.stroke()
        
        let tankGun = UIBezierPath(rect: CGRect(x: 450 + deltaX  , y: 310, width: 200, height: 30))
        tankGun.fill()
        tankGun.stroke()
        let bottomOfTank = UIBezierPath(rect: CGRect(x: 100 + deltaX  , y: 400, width: 300, height: 200))
        bottomOfTank.fill()
        bottomOfTank.stroke()
        
        let topOfTank = UIBezierPath(rect: CGRect(x: 150 + deltaX, y: 250, width: 300, height: 150))
        topOfTank.fill()
        topOfTank.stroke()
        
    }
}
