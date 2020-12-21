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
    
    let percentage: CGFloat = 1
    
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
        path.lineWidth = 3 * percentage
        #colorLiteral(red: 0.2300531268, green: 0.2766252756, blue: 0.2140808702, alpha: 1).setFill()
        path.move(to: CGPoint(x: (tankX - 200) * percentage, y: 350 * percentage))
        path.addLine(to: CGPoint(x: (tankX - 150) * percentage, y: 300 * percentage))
        path.addLine(to: CGPoint(x: (tankX - 100) * percentage, y: 250 * percentage))
        path.addLine(to: CGPoint(x: (tankX + 300) * percentage, y: 250 * percentage))
        path.addLine(to: CGPoint(x: (tankX + 300) * percentage, y: 300 * percentage))
        path.addLine(to: CGPoint(x: (tankX + 250) * percentage, y: 350 * percentage))
        path.close()
        path.fill()
        path.stroke()
    }
    
    func drawCannon() {
        let path = UIBezierPath()
        #colorLiteral(red: 0.2300531268, green: 0.2766252756, blue: 0.2140808702, alpha: 1).setFill()
        path.move(to: CGPoint(x: tankX * percentage, y: 250 * percentage))
        path.addLine(to: CGPoint(x: (tankX + 50) * percentage, y: 200 * percentage))
        path.addLine(to: CGPoint(x: (tankX + 200) * percentage, y: 200 * percentage))
        path.addLine(to: CGPoint(x: (tankX + 200) * percentage, y: 225 * percentage))
        path.addLine(to: CGPoint(x: (tankX + 175) * percentage, y: 250 * percentage))
        path.fill()
        path.stroke()
        
        let cannonCover = UIBezierPath()
        #colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1).setFill()
        cannonCover.move(to: CGPoint(x: (tankX + 50) * percentage, y: 250 * percentage))
        cannonCover.addLine(to: CGPoint(x: (tankX + 100) * percentage, y: 200 * percentage))
        cannonCover.addLine(to: CGPoint(x: tankX * percentage, y: 200 * percentage))
        cannonCover.addLine(to: CGPoint(x: (tankX - 50) * percentage, y: 250 * percentage))
        cannonCover.close()
        cannonCover.fill()
        cannonCover.stroke()
        
        let cannon = UIBezierPath()
        #colorLiteral(red: 0.230014354, green: 0.2766717672, blue: 0.2096388042, alpha: 1).setFill()
        cannon.move(to: CGPoint(x: (tankX - 25) * percentage, y: 225 * percentage))
        cannon.addLine(to: CGPoint(x: (tankX - 200) * percentage, y: 225 * percentage))
        cannon.addLine(to: CGPoint(x: (tankX - 200) * percentage, y: 235 * percentage))
        cannon.addLine(to: CGPoint(x: (tankX - 35) * percentage, y: 235 * percentage))
        cannon.fill()
        cannon.stroke()
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setFill()
        UIBezierPath(rect: CGRect(x: (tankX - 150) * percentage, y: 222.5 * percentage, width: 50 * percentage, height: 15 * percentage)).fill()
        UIBezierPath(rect: CGRect(x: (tankX - 250) * percentage, y: 225 * percentage, width: 50 * percentage, height: 10 * percentage)).fill()
    }
    
    func drawWheelDesign(x: CGFloat, y: CGFloat, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, color: UIColor) {
        let wheelDesign = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        wheelDesign.addLine(to: CGPoint(x: x, y: y))
        wheelDesign.fill()
    }
    
    func drawWheel(x: CGFloat, y: CGFloat, radius: CGFloat) {
        let wheel = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: radius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        wheel.lineWidth = 7.5 * percentage
        wheel.stroke()
        
        drawWheelDesign(x: x, y: y, radius: radius, startAngle: tankX/radius, endAngle: tankX/radius + 0.25 * CGFloat.pi, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawWheelDesign(x: x, y: y, radius: radius, startAngle: tankX/radius + 0.5 * CGFloat.pi, endAngle: tankX/radius + 0.75 * CGFloat.pi, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawWheelDesign(x: x, y: y, radius: radius, startAngle: tankX/radius + CGFloat.pi, endAngle: tankX/radius + 1.25 * CGFloat.pi, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawWheelDesign(x: x, y: y, radius: radius, startAngle: tankX/radius + 1.5 * CGFloat.pi, endAngle: tankX/radius + 1.75 * CGFloat.pi, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        
        
    }
    
    
    
    func drawWheels() {
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        for i in 0 ..< 6 {
            drawWheel(x: (tankX - 150 + CGFloat(i) * 75) * percentage, y: 375 * percentage, radius: 30 * percentage)
        }
    }
    
    func drawWheelCover() {
        let path = UIBezierPath()
        #colorLiteral(red: 0.308671385, green: 0.2048205137, blue: 0.03794555739, alpha: 1).setFill()
        path.move(to: CGPoint(x: (tankX - 150) * percentage, y: 300 * percentage))
        path.addLine(to: CGPoint(x: (tankX + 300) * percentage, y: 300 * percentage))
        path.addLine(to: CGPoint(x: (tankX + 225) * percentage, y: 375 * percentage))
        path.addLine(to: CGPoint(x: (tankX - 200) * percentage, y: 350 * percentage))
        path.close()
        path.fill()
        path.stroke()
    }
    
    func drawDecorations() {
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setFill()
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: (tankX + 150) * percentage, y: 200 * percentage))
        path.addLine(to: CGPoint(x: (tankX + 150) * percentage, y: 50 * percentage))
        path.stroke()
        
        let path0 = UIBezierPath(rect: CGRect(x: (tankX + 50) * percentage, y: 170 * percentage, width: 10 * percentage, height: 30 * percentage))
        path0.fill()
        path0.stroke()
        let path1 = UIBezierPath(rect: CGRect(x: (tankX + 70) * percentage, y: 170 * percentage, width: 10 * percentage, height: 30 * percentage))
        path1.fill()
        path1.stroke()
        let path2 = UIBezierPath(rect: CGRect(x: (tankX + 10) * percentage, y: 155 * percentage, width: 75 * percentage, height: 20 * percentage))
        path2.fill()
        path2.stroke()
        let path3 = UIBezierPath(rect: CGRect(x: (tankX - 65) * percentage, y: 160 * percentage, width: 75 * percentage, height: 10 * percentage))
        path3.fill()
        path3.stroke()
    }
    
    func drawTrack() {
        let track = UIBezierPath()
        track.lineWidth = 7.5 * percentage
        track.move(to: CGPoint(x: (tankX - 150) * percentage, y: 405 * percentage))
        track.addLine(to: CGPoint(x: (tankX + 225) * percentage, y: 405 * percentage))
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
 
 2π radians = 360 degrees
 1 km = 1000 m
 
 radian ~ radius
 
 75^2 = 7*7+1 25
 25^2 = 2*3 25
 
 */
