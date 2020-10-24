//
//  TankView.swift
//  Tank
//
//  Created by Felix Lo on 2020/10/12.
//  Copyright © 2020 Felix Lo. All rights reserved.
//

import UIKit

class TankView: UIView {
    
    var tankX: CGFloat = 300
    
    override func draw(_ rect: CGRect) {
        drawBody()
        drawCannon()
        drawWheels()
        drawWheelCover()
        drawDecorations()
        drawTrack()
        
        if tankX < -500 {
            tankX = 1000
        }
    }
    
    func drawBody() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: tankX - 200, y: 350))
        path.addLine(to: CGPoint(x: tankX - 150, y: 300))
        path.addLine(to: CGPoint(x: tankX - 100, y: 250))
        path.addLine(to: CGPoint(x: tankX + 300, y: 250))
        path.addLine(to: CGPoint(x: tankX + 300, y: 300))
        path.addLine(to: CGPoint(x: tankX + 250, y: 350))
        path.close()
        path.stroke()
    }
    
    func drawCannon() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: tankX, y: 250))
        path.addLine(to: CGPoint(x: tankX + 50, y: 200))
        path.addLine(to: CGPoint(x: tankX + 200, y: 200))
        path.addLine(to: CGPoint(x: tankX + 200, y: 225))
        path.addLine(to: CGPoint(x: tankX + 175, y: 250))
        path.stroke()
        
        let cannonCover = UIBezierPath()
        #colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1).setFill()
        cannonCover.move(to: CGPoint(x: tankX + 50, y: 250))
        cannonCover.addLine(to: CGPoint(x: tankX + 100, y: 200))
        cannonCover.addLine(to: CGPoint(x: tankX, y: 200))
        cannonCover.addLine(to: CGPoint(x: tankX - 50, y: 250))
        cannonCover.close()
        cannonCover.fill()
        
        let cannon = UIBezierPath()
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setFill()
        cannon.move(to: CGPoint(x: tankX - 25, y: 225))
        cannon.addLine(to: CGPoint(x: tankX - 200, y: 225))
        cannon.addLine(to: CGPoint(x: tankX - 200, y: 235))
        cannon.addLine(to: CGPoint(x: tankX - 35, y: 235))
        cannon.stroke()
        UIBezierPath(rect: CGRect(x: tankX - 150, y: 222.5, width: 50, height: 15)).fill()
        UIBezierPath(rect: CGRect(x: tankX - 250, y: 225, width: 50, height: 10)).fill()
    }
    
    func drawWheelDesign(x: CGFloat, y: CGFloat, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, color: UIColor) {
        let wheelDesign = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        wheelDesign.addLine(to: CGPoint(x: x, y: y))
        wheelDesign.fill()
    }
    
    func drawWheel(x: CGFloat, y: CGFloat, radius: CGFloat) {
        let wheel = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: radius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        wheel.stroke()
        
        drawWheelDesign(x: x, y: y, radius: radius, startAngle: tankX/radius, endAngle: tankX/radius + 0.25 * CGFloat.pi, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawWheelDesign(x: x, y: y, radius: radius, startAngle: tankX/radius + 0.5 * CGFloat.pi, endAngle: tankX/radius + 0.75 * CGFloat.pi, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawWheelDesign(x: x, y: y, radius: radius, startAngle: tankX/radius + CGFloat.pi, endAngle: tankX/radius + 1.25 * CGFloat.pi, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawWheelDesign(x: x, y: y, radius: radius, startAngle: tankX/radius + 1.5 * CGFloat.pi, endAngle: tankX/radius + 1.75 * CGFloat.pi, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        
        
    }
    
    
    
    func drawWheels() {
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        for i in 0 ..< 6 {
            drawWheel(x: tankX - 150 + CGFloat(i) * 75, y: 375, radius: 30)
        }
    }
    
    func drawWheelCover() {
        let path = UIBezierPath()
        #colorLiteral(red: 0.09545009583, green: 0.2720899582, blue: 0.02509538643, alpha: 1).setFill()
        path.move(to: CGPoint(x: tankX - 150, y: 300))
        path.addLine(to: CGPoint(x: tankX + 300, y: 300))
        path.addLine(to: CGPoint(x: tankX + 225, y: 375))
        path.addLine(to: CGPoint(x: tankX - 150, y: 375))
        path.close()
        path.fill()
    }
    
    func drawDecorations() {
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setFill()
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: tankX + 150, y: 200))
        path.addLine(to: CGPoint(x: tankX + 150, y: 50))
        path.stroke()
        
        UIBezierPath(rect: CGRect(x: tankX + 50, y: 170, width: 10, height: 30)).fill()
        UIBezierPath(rect: CGRect(x: tankX + 70, y: 170, width: 10, height: 30)).fill()
        UIBezierPath(rect: CGRect(x: tankX + 10, y: 155, width: 75, height: 20)).fill()
        UIBezierPath(rect: CGRect(x: tankX - 65, y: 160, width: 75, height: 10)).fill()
    }
    
    func drawTrack() {
        let track = UIBezierPath()
        track.lineWidth = 5
        track.move(to: CGPoint(x: tankX - 200, y: 350))
        track.addLine(to: CGPoint(x: tankX - 175, y: 390))
        track.move(to: CGPoint(x: tankX - 150, y: 405))
        track.addLine(to: CGPoint(x: tankX + 225, y: 405))
        track.move(to: CGPoint(x: tankX + 255, y: 375))
        track.addLine(to: CGPoint(x: tankX + 255, y: 345))
        track.stroke()
    }
    
}

/*
 
 N: 0 < N
 Z: 0, -2, -78589, 8
 Q: 0.2937, 29, 9.3. 2.33333333333333... 2/3, 5/1
 R: π, √2, √5, 2, 0.6823
 
 C: ?
 
 (2 * 3) ^ 2 = 2 ^ 2 * 3 ^ 3
 (√3)^2 = 3
 (4√3)^2 = 4 ^ 2 * √3 ^ 2 = 16 * 3 = 48
 (2√5)^2 = 2 ^ 2 * √5 ^ 2 = 4 * 5 = 20
 ((√2√5)√7)^2 = √2 ^ 2 * √5 ^ 2* √7 ^ 2 = 2 * 5 * 7 = 70
 ( 2√11) ^ 2 = 2 ^ 2 * √11 ^ 2 = 4 * 11
 (2 5) = 2 ^ 2 * 5 ^ 2 = 4 * 25
 (√2√2√5) = 2 * 2 * 5
 
 */
