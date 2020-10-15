//
//  TankView.swift
//  Tank
//
//  Created by Felix Lo on 2020/10/12.
//  Copyright © 2020 Felix Lo. All rights reserved.
//

import UIKit

class TankView: UIView {
    override func draw(_ rect: CGRect) {
        drawBody()
        drawCannon()
        drawWheels()
        drawWheelCover()
        drawDecorations()
        drawTrack()
    }
    
    func drawBody() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 350))
        path.addLine(to: CGPoint(x: 150, y: 300))
        path.addLine(to: CGPoint(x: 200, y: 250))
        path.addLine(to: CGPoint(x: 600, y: 250))
        path.addLine(to: CGPoint(x: 600, y: 300))
        path.addLine(to: CGPoint(x: 550, y: 350))
        path.close()
        path.stroke()
    }
    
    func drawCannon() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 300, y: 250))
        path.addLine(to: CGPoint(x: 350, y: 200))
        path.addLine(to: CGPoint(x: 500, y: 200))
        path.addLine(to: CGPoint(x: 500, y: 225))
        path.addLine(to: CGPoint(x: 475, y: 250))
        path.stroke()
        
        let cannonCover = UIBezierPath()
        #colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1).setFill()
        cannonCover.move(to: CGPoint(x: 350, y: 250))
        cannonCover.addLine(to: CGPoint(x: 400, y: 200))
        cannonCover.addLine(to: CGPoint(x: 300, y: 200))
        cannonCover.addLine(to: CGPoint(x: 250, y: 250))
        cannonCover.close()
        cannonCover.fill()
        
        let cannon = UIBezierPath()
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setFill()
        cannon.move(to: CGPoint(x: 275, y: 225))
        cannon.addLine(to: CGPoint(x: 100, y: 225))
        cannon.addLine(to: CGPoint(x: 100, y: 235))
        cannon.addLine(to: CGPoint(x: 265, y: 235))
        cannon.stroke()
        
        UIBezierPath(rect: CGRect(x: 150, y: 222.5, width: 50, height: 15)).fill()
        UIBezierPath(rect: CGRect(x: 50, y: 225, width: 50, height: 10)).fill()
    }
    
    func drawWheel(x: CGFloat, y: CGFloat, radius: CGFloat) {
        let wheel = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: radius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        wheel.fill()
    }
    
    func drawWheels() {
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        for i in 0 ..< 6 {
            drawWheel(x: 150 + CGFloat(i) * 75, y: 375, radius: 30)
        }
    }
    
    func drawWheelCover() {
        let path = UIBezierPath()
        #colorLiteral(red: 0.09545009583, green: 0.2720899582, blue: 0.02509538643, alpha: 1).setFill()
        path.move(to: CGPoint(x: 150, y: 300))
        path.addLine(to: CGPoint(x: 600, y: 300))
        path.addLine(to: CGPoint(x: 525, y: 375))
        path.addLine(to: CGPoint(x: 150, y: 375))
        path.close()
        path.fill()
    }
    
    func drawDecorations() {
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setFill()
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 450, y: 200))
        path.addLine(to: CGPoint(x: 450, y: 50))
        path.stroke()
        
        UIBezierPath(rect: CGRect(x: 350, y: 170, width: 10, height: 30)).fill()
        UIBezierPath(rect: CGRect(x: 370, y: 170, width: 10, height: 30)).fill()
        UIBezierPath(rect: CGRect(x: 310, y: 155, width: 75, height: 20)).fill()
        UIBezierPath(rect: CGRect(x: 235, y: 160, width: 75, height: 10)).fill()
    }
    
    func drawTrack() {
        let track = UIBezierPath()
        track.lineWidth = 5
        track.move(to: CGPoint(x: 100, y: 350))
        track.addLine(to: CGPoint(x: 125, y: 390))
        track.move(to: CGPoint(x: 150, y: 405))
        track.addLine(to: CGPoint(x: 525, y: 405))
        track.move(to: CGPoint(x: 555, y: 375))
        track.addLine(to: CGPoint(x: 555, y: 345))
        track.stroke()
    }
    
}
