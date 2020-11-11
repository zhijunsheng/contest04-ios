//
//  BoardView.swift
//  Contest4
//
//  Created by Andy Yan on 2020-10-13.
//  Copyright © 2020 Andy Yan. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    var deltaX: CGFloat = 0
        
    
    
    override func draw(_ rect: CGRect) {
        drawTires()
        drawRoundTrack()
        drawTankPart()
        drawTop()
//        drawBody()
        
    }
    
    func drawRoundTrack() {
        let roundpart3 = UIBezierPath(arcCenter: CGPoint(x: 75 + deltaX, y: 340), radius: 35, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: false)
        
        roundpart3.lineWidth = 5
        
        roundpart3.stroke()
        
        let roundpart4 = UIBezierPath(arcCenter: CGPoint(x: 625 + deltaX, y: 340), radius: 35, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        roundpart4.lineWidth = 5
        
        roundpart4.stroke()
        
        for i in 0 ... 6 {
            let roadwheel = UIBezierPath(arcCenter: CGPoint(x: 125 + 75 * CGFloat(i) + deltaX, y: 400), radius: 25, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
            
            roadwheel.lineWidth = 5
            
            roadwheel.stroke()
        }
    }
    
    func drawTires() {
        
        let wheelPart = UIBezierPath()
        
        wheelPart.lineWidth = 5
        
        wheelPart.move(to: CGPoint(x: 125 + deltaX, y: 425))
        wheelPart.addLine(to: CGPoint(x: 125 + 75 * 6 + deltaX, y: 425))

        wheelPart.move(to: CGPoint(x: 113 + deltaX, y: 422.5))
        wheelPart.addLine(to: CGPoint(x: 50 + deltaX, y: 365))

        wheelPart.move(to: CGPoint(x: 587.5 + deltaX, y: 422.5))
        wheelPart.addLine(to: CGPoint(x: 650 + deltaX, y: 365))
                       
        wheelPart.stroke()
        
    }
    
    func drawTankPart() {
        let part = UIBezierPath()
        
        part.move(to: CGPoint(x: 110 + deltaX, y: 375))
        part.addLine(to: CGPoint(x: 590 + deltaX, y: 375))
        
        part.move(to: CGPoint(x: 110 + deltaX, y: 375))
        part.addLine(to: CGPoint(x: 110 + deltaX, y: 325))
 
        part.move(to: CGPoint(x: 590 + deltaX, y: 375))
        part.addLine(to: CGPoint(x: 590 + deltaX, y: 325))

//        part.move(to: CGPoint(x: 60, y: 325))
//        part.addLine(to: CGPoint(x: 640, y: 325))
//
        part.stroke()
        
          #colorLiteral(red: 0.352917254, green: 0.785050571, blue: 0.981100738, alpha: 1).setFill()
//
//        let part2 = UIBezierPath(rect: CGRect(x: 40, y: 275, width: 620, height: 50))
//
//        part2.fill()
//        part2.stroke()
//
//        for i in 0 ... 5 {
//            UIBezierPath(rect: CGRect(x: 40 + 90 * i, y: 275, width: 90, height: 50)).stroke()
//        }
        
        for i in 0 ... 15 {
            let pencil = UIBezierPath()
            
            pencil.lineWidth = 5

            pencil.move(to: CGPoint(x: 120 + 30 * CGFloat(i) + deltaX, y: 420))
            pencil.addLine(to: CGPoint(x: 120 + 30 * CGFloat(i) + deltaX, y: 430))

            pencil.stroke()
        }
        
        //side teeth
        
//        let pencil = UIBezierPath()
//
//        pencil.move(to: CGPoint(x: 50, y: 355))
//        pencil.addLine(to: CGPoint(x: 40, y: 365))
//
//        pencil.move(to: CGPoint(x: 70, y: 375))
//        pencil.addLine(to: CGPoint(x: 60, y: 385))
//        pencil.move(to: CGPoint(x: 90, y: 395))
//        pencil.addLine(to: CGPoint(x: 80, y: 405))
//
//        pencil.move(to: CGPoint(x: 110, y: 415))
//        pencil.addLine(to: CGPoint(x: 100, y: 425))
//
//        pencil.move(to: CGPoint(x: 50, y: 355))
//        pencil.addLine(to: CGPoint(x: 40, y: 365))
//
//        pencil.move(to: CGPoint(x: 70, y: 375))
//        pencil.addLine(to: CGPoint(x: 60, y: 385))
//
//        pencil.move(to: CGPoint(x: 90, y: 395))
//        pencil.addLine(to: CGPoint(x: 80, y: 405))
//
//        pencil.move(to: CGPoint(x: 110, y: 415))
//        pencil.addLine(to: CGPoint(x: 100, y: 425))

//        pencil.stroke()
        
//        let pencil = UIBezierPath()
//
//        pencil.move(to: CGPoint(x: 110, y: 250))
//        pencil.addLine(to: CGPoint(x: 130, y: 230))
//
//        pencil.stroke()
    }
    
    func drawTop() {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 40 + deltaX, y: 295))
        pencil.addLine(to: CGPoint(x: 90 + deltaX, y: 275))
        
        pencil.move(to: CGPoint(x: 90 + deltaX, y: 275))
        pencil.addLine(to: CGPoint(x: 610 + deltaX, y: 275))
        
        pencil.move(to: CGPoint(x: 610 + deltaX, y: 275))
        pencil.addLine(to: CGPoint(x: 660 + deltaX, y: 295))
        
        
        
        pencil.move(to: CGPoint(x: 40 + deltaX, y: 315))
        pencil.addLine(to: CGPoint(x: 90 + deltaX, y: 295))
        
        pencil.move(to: CGPoint(x: 90 + deltaX, y: 295))
        pencil.addLine(to: CGPoint(x: 610 + deltaX, y: 295))
        
        pencil.move(to: CGPoint(x: 610 + deltaX, y: 295))
        pencil.addLine(to: CGPoint(x: 660 + deltaX, y: 315))
        
        pencil.move(to: CGPoint(x: 40 + deltaX, y: 295))
        pencil.addLine(to: CGPoint(x: 40 + deltaX, y: 315))
        
        pencil.move(to: CGPoint(x: 660 + deltaX, y: 295))
        pencil.addLine(to: CGPoint(x: 660 + deltaX, y: 315))
        
        pencil.move(to: CGPoint(x: 150 + deltaX, y: 225))
        pencil.addLine(to: CGPoint(x: 150 + deltaX, y: 275))
        
        pencil.move(to: CGPoint(x: 550 + deltaX, y: 225))
        pencil.addLine(to: CGPoint(x: 550 + deltaX, y: 275))
        
        pencil.move(to: CGPoint(x: 150 + deltaX, y: 225))
        pencil.addLine(to: CGPoint(x: 550 + deltaX, y: 225))
        
        pencil.move(to: CGPoint(x: 205 + deltaX, y: 225))
        pencil.addLine(to: CGPoint(x: 225 + deltaX, y: 175))
        
        pencil.move(to: CGPoint(x: 225 + deltaX, y: 175))
        pencil.addLine(to: CGPoint(x: 500 + deltaX, y: 175))
        
        pencil.move(to: CGPoint(x: 500 + deltaX, y: 175))
        pencil.addLine(to: CGPoint(x: 525 + deltaX, y: 225))
        
        pencil.move(to: CGPoint(x: 0 + deltaX, y: 200))
        pencil.addLine(to: CGPoint(x: 150 + deltaX, y: 200))
        
        pencil.move(to: CGPoint(x: 0 + deltaX, y: 185))
        pencil.addLine(to: CGPoint(x: 150 + deltaX, y: 185))
        
        pencil.move(to: CGPoint(x: 150 + deltaX, y: 180))
        pencil.addLine(to: CGPoint(x: 150 + deltaX, y: 205))
        
        pencil.move(to: CGPoint(x: 150 + deltaX, y: 180))
        pencil.addLine(to: CGPoint(x: 223 + deltaX, y: 180))

        pencil.move(to: CGPoint(x: 150 + deltaX, y: 205))
        pencil.addLine(to: CGPoint(x: 213 + deltaX, y: 205))
        
        pencil.move(to: CGPoint(x: 0 + deltaX, y: 185))
        pencil.addLine(to: CGPoint(x: 0 + deltaX, y: 200))
        
        pencil.stroke()
    }
    
    //        let part2 = UIBezierPath(rect: CGRect(x: 40, y: 275, width: 620, height: 50))
    //
    //        part2.fill()
    //        part2.stroke()
    
    func drawBody() {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 40, y: 275))
        pencil.addLine(to: CGPoint(x: 660, y: 275))
        pencil.addLine(to: CGPoint(x: 590, y: 325))
        pencil.addLine(to: CGPoint(x: 110, y: 325))
        
        pencil.stroke()
    }
}
