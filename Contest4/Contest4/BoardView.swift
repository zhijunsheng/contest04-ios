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
        drawTop()
//        drawBody()
        
    }
    
    func drawRoundTrack() {
        let roundpart3 = UIBezierPath(arcCenter: CGPoint(x: 75, y: 340), radius: 35, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: false)
        
        roundpart3.lineWidth = 5
        
        roundpart3.stroke()
        
        let roundpart4 = UIBezierPath(arcCenter: CGPoint(x: 625, y: 340), radius: 35, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        roundpart4.lineWidth = 5
        
        roundpart4.stroke()
        
        for i in 0 ... 6 {
            let roadwheel = UIBezierPath(arcCenter: CGPoint(x: 125 + 75 * i, y: 400), radius: 25, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
            
            roadwheel.lineWidth = 5
            
            roadwheel.stroke()
        }
    }
    
    func drawTires() {
        
        let wheelPart = UIBezierPath()
        
        wheelPart.lineWidth = 5
        
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
        part.addLine(to: CGPoint(x: 590, y: 375))
        
        part.move(to: CGPoint(x: 110, y: 375))
        part.addLine(to: CGPoint(x: 110, y: 325))

        part.move(to: CGPoint(x: 590, y: 375))
        part.addLine(to: CGPoint(x: 590, y: 325))

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

            pencil.move(to: CGPoint(x: 120 + 30 * i, y: 420))
            pencil.addLine(to: CGPoint(x: 120 + 30 * i, y: 430))

            pencil.stroke()
        }
        
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
        
        pencil.move(to: CGPoint(x: 40, y: 295))
        pencil.addLine(to: CGPoint(x: 90, y: 275))
        
        pencil.move(to: CGPoint(x: 90, y: 275))
        pencil.addLine(to: CGPoint(x: 610, y: 275))
        
        pencil.move(to: CGPoint(x: 610, y: 275))
        pencil.addLine(to: CGPoint(x: 660, y: 295))
        
        
        
        pencil.move(to: CGPoint(x: 40, y: 315))
        pencil.addLine(to: CGPoint(x: 90, y: 295))
        
        pencil.move(to: CGPoint(x: 90, y: 295))
        pencil.addLine(to: CGPoint(x: 610, y: 295))
        
        pencil.move(to: CGPoint(x: 610, y: 295))
        pencil.addLine(to: CGPoint(x: 660, y: 315))
        
        pencil.move(to: CGPoint(x: 40, y: 295))
        pencil.addLine(to: CGPoint(x: 40, y: 315))
        
        pencil.move(to: CGPoint(x: 660, y: 295))
        pencil.addLine(to: CGPoint(x: 660, y: 315))
        
        pencil.move(to: CGPoint(x: 150, y: 225))
        pencil.addLine(to: CGPoint(x: 150, y: 275))
        
        pencil.move(to: CGPoint(x: 550, y: 225))
        pencil.addLine(to: CGPoint(x: 550, y: 275))
        
        pencil.move(to: CGPoint(x: 150, y: 225))
        pencil.addLine(to: CGPoint(x: 550, y: 225))
        
        pencil.move(to: CGPoint(x: 205, y: 225))
        pencil.addLine(to: CGPoint(x: 225, y: 175))
        
        pencil.move(to: CGPoint(x: 225, y: 175))
        pencil.addLine(to: CGPoint(x: 500, y: 175))
        
        pencil.move(to: CGPoint(x: 500, y: 175))
        pencil.addLine(to: CGPoint(x: 525, y: 225))
        
        pencil.move(to: CGPoint(x: 0, y: 200))
        pencil.addLine(to: CGPoint(x: 150, y: 200))
        
        pencil.move(to: CGPoint(x: 0, y: 185))
        pencil.addLine(to: CGPoint(x: 150, y: 185))
        
        pencil.move(to: CGPoint(x: 150, y: 180))
        pencil.addLine(to: CGPoint(x: 150, y: 205))
        
        pencil.move(to: CGPoint(x: 150, y: 180))
        pencil.addLine(to: CGPoint(x: 223, y: 180))

        pencil.move(to: CGPoint(x: 150, y: 205))
        pencil.addLine(to: CGPoint(x: 213, y: 205))
        
        pencil.move(to: CGPoint(x: 0, y: 185))
        pencil.addLine(to: CGPoint(x: 0, y: 200))
        
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
