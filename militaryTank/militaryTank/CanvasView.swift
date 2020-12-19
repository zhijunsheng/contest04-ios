//
//  CanvasView.swift
//  militaryTank
//
//  Created by Elaine on 2020-10-13.
//

import UIKit

class CanvasView: UIView {
    var deltaX: CGFloat = 0
    var bulletX: CGFloat = 0
    var showBullet: Bool = false
    var randomX1 = Int(arc4random() % 701)
    var randomY1 = Int(arc4random() % 200)
    var randomX = Int(arc4random() % 701)
    var randomY = Int(arc4random() % 200)
    override func draw(_ rect: CGRect) {
        
        
        let pencil = UIBezierPath()
        pencil.lineWidth = 5
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setStroke()
        #colorLiteral(red: 0.09174057096, green: 0.4620538354, blue: 0.4376840591, alpha: 1).setFill()
        pencil.move(to: CGPoint(x: 0, y: 700))
        pencil.addLine(to: CGPoint(x: 730, y: 700))
        pencil.addLine(to: CGPoint(x: 730, y: 500))
        pencil.addLine(to: CGPoint(x: 0, y: 500))
        pencil.close()
        pencil.fill()
        pencil.stroke()
        
 
        drawRoad()
        drawTank()
        drawWheelAndBottomPart()
        
        if showBullet {
            let bullet = UIImage(named: "Bullet")
            bullet?.draw(in: CGRect(x: 600 + bulletX, y: 250, width: 55, height: 45))
            
        }
    }

    func drawRoad() {
        let pencil = UIBezierPath()
        pencil.lineWidth = 2
        pencil.move(to: CGPoint(x: randomX1, y: 500 + randomY))
        pencil.addLine(to: CGPoint(x: randomX, y: 500 + randomY1))
        pencil.stroke()
    }
    
    func drawOneWheel(distance: CGFloat) {
        let arc4 = UIBezierPath(arcCenter: CGPoint(x: 100 + distance + deltaX, y: 600), radius: 45, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        arc4.lineWidth = 10
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
        drawOneWheel(distance: 0)
        drawOneWheel(distance: 100)
        drawOneWheel(distance: 200)
        drawOneWheel(distance: 300)
    }
    
    func drawTank() {
        let movingTip = CGFloat(200) + deltaX
        #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        let tipOfTank = UIBezierPath(rect: CGRect(x: movingTip  , y: 355, width: 100, height: 40))
        tipOfTank.fill()
        tipOfTank.stroke()
    
        let tankGunTip = UIBezierPath(rect: CGRect(x: 540 + deltaX  , y: 250, width: 60, height: 50))
        tankGunTip.fill()
        tankGunTip.stroke()
        
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
