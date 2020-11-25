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

        let bullet = UIImage(named: "Bullet")
        bullet?.draw(in: CGRect(x: 570 + deltaX, y: 150, width: 90, height: 50))
        
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
        connectorStroke.move(to: CGPoint(x: 100 + deltaX, y: 636))
        connectorStroke.addLine(to: CGPoint(x: 400 + deltaX, y: 636))
        connectorStroke.stroke()
        
        drawOneWheel(distance: 0)
        drawOneWheel(distance: 100)
        drawOneWheel(distance: 200)
        drawOneWheel(distance: 300)
    }
    
    
    
    func drawTank() {
        #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        let tipOfTank = UIBezierPath(rect: CGRect(x: 200 + deltaX  , y: 355, width: 100, height: 40))
        tipOfTank.fill()
        tipOfTank.stroke()
    
        let tankGunTip = UIBezierPath(rect: CGRect(x: 540 + deltaX  , y: 250, width: 60, height: 50))
        tankGunTip.fill()
        tankGunTip.stroke()
        
//        let tankGun = UIBezierPath(rect: CGRect(x: 450 + deltaX  , y: 310, width: 200, height: 30))
//        tankGun.fill()
//        tankGun.stroke()
        
        let tankGun = UIBezierPath()
        tankGun.move(to: CGPoint(x: 440 + deltaX, y: 410))
        tankGun.addLine(to: CGPoint(x: 540 + deltaX, y: 300))
        tankGun.addLine(to: CGPoint(x: 600 + deltaX, y: 300))
        tankGun.addLine(to: CGPoint(x: 455 + deltaX, y: 448))
        tankGun.close()
        tankGun.fill()
        tankGun.stroke()
        
        let miniArm = UIBezierPath(arcCenter: CGPoint(x: 445 + deltaX, y: 430), radius: 20, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.3548746705, green: 0.7854425311, blue: 0.9815476537, alpha: 1).setFill()
        miniArm.fill()
        miniArm.stroke()
        
        let arm = UIBezierPath(arcCenter: CGPoint(x: 420 + deltaX, y: 430), radius: 30, startAngle: -0.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        arm.fill()
        arm.stroke()
        #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        let bottomOfTank = UIBezierPath(rect: CGRect(x: 100 + deltaX  , y: 465, width: 300, height: 100))
        bottomOfTank.fill()
        bottomOfTank.stroke()
        
        let topOfTank = UIBezierPath(rect: CGRect(x: 120 + deltaX, y: 395, width: 300, height: 70))
        topOfTank.fill()
        topOfTank.stroke()
        
    }
}
