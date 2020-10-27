//
//  BoardView.swift
//  Contest4
//
//  Created by Andy Yan on 2020-10-13.
//  Copyright © 2020 Andy Yan. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    override func draw(_ rect: CGRect) {
        drawTires()
        drawRoundTrack()
        drawTankPart()
        
    }
    
    func drawRoundTrack() {
        let roundpart3 = UIBezierPath(arcCenter: CGPoint(x: 75, y: 340), radius: 35, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: false)
        
        roundpart3.stroke()
        
        let roundpart4 = UIBezierPath(arcCenter: CGPoint(x: 625, y: 340), radius: 35, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        roundpart4.stroke()
        
        for i in 0 ... 2 {
            let roadwheel = UIBezierPath(arcCenter: CGPoint(x: 125 + 75 * i, y: 400), radius: 25, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
            
            roadwheel.stroke()
        }
        
        for i in 0 ... 2 {
            let roadwheel = UIBezierPath(arcCenter: CGPoint(x: 425 + 75 * i, y: 400), radius: 25, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
            
            roadwheel.stroke()
        }
    }
    
    func drawTires() {
        
        let wheelPart = UIBezierPath()
        
        wheelPart.move(to: CGPoint(x: 110, y: 375))
        wheelPart.addLine(to: CGPoint(x: 590, y: 375))
        
        wheelPart.move(to: CGPoint(x: 125, y: 425))
        wheelPart.addLine(to: CGPoint(x: 125 + 75 * 6, y: 425))
        
        wheelPart.move(to: CGPoint(x: 113, y: 422.5))
        wheelPart.addLine(to: CGPoint(x: 50, y: 365))

        wheelPart.move(to: CGPoint(x: 587.5, y: 422.5))
        wheelPart.addLine(to: CGPoint(x: 650, y: 365))
        
        wheelPart.stroke()
        
    }
    
    func drawTankPart() {
        let part = UIBezierPath()

        part.move(to: CGPoint(x: 110, y: 375))
        part.addLine(to: CGPoint(x: 110, y: 325))

        part.move(to: CGPoint(x: 590, y: 375))
        part.addLine(to: CGPoint(x: 590, y: 325))

        part.move(to: CGPoint(x: 60, y: 325))
        part.addLine(to: CGPoint(x: 640, y: 325))
        
        part.stroke()
        
          #colorLiteral(red: 0.352917254, green: 0.785050571, blue: 0.981100738, alpha: 1).setFill()
        
        let part2 = UIBezierPath(rect: CGRect(x: 40, y: 275, width: 620, height: 50))
        
        part2.fill()
        part2.stroke()
        
        UIBezierPath(rect: CGRect(x: 40, y: 275, width: 100, height: 50)).stroke()
        UIBezierPath(rect: CGRect(x: 140, y: 275, width: 100, height: 50)).stroke()
        UIBezierPath(rect: CGRect(x: 240, y: 275, width: 100, height: 50)).stroke()
        UIBezierPath(rect: CGRect(x: 340, y: 275, width: 100, height: 50)).stroke()
        UIBezierPath(rect: CGRect(x: 440, y: 275, width: 100, height: 50)).stroke()
    }

}
