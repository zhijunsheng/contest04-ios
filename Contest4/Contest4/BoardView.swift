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
        drawWheels()
    }
    
    func drawWheels() {
        for i in 0 ... 6 {
            let pencil = UIBezierPath(arcCenter: CGPoint(x: 125 + CGFloat(i) * 75 + deltaX, y: 400), radius: 25, startAngle: CGFloat.pi * 1.5 + deltaX / 25, endAngle: CGFloat.pi * 2 + deltaX / 25, clockwise: true)
            pencil.addLine(to: CGPoint(x: 125 + CGFloat(i) * 75 + deltaX, y: 400))
            pencil.close()
            pencil.lineWidth = 5
             pencil.stroke()
            
            let pencil2 = UIBezierPath(arcCenter: CGPoint(x: 125 + CGFloat(i) * 75 + deltaX, y: 400), radius: 25, startAngle: CGFloat.pi * 0.5 + deltaX / 25, endAngle: CGFloat.pi * 1 + deltaX / 25, clockwise: true)
            pencil2.addLine(to: CGPoint(x: 125 + CGFloat(i) * 75 + deltaX, y: 400))
            pencil2.close()
            pencil2.lineWidth = 5
            pencil2.stroke()
        }
    }
    
    func drawRoundTrack() {
        let roundpart3 = UIBezierPath(arcCenter: CGPoint(x: 75 + deltaX, y: 340), radius: 35, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: false)
        
        roundpart3.lineWidth = 5
        
        roundpart3.stroke()
        
        let roundpart4 = UIBezierPath(arcCenter: CGPoint(x: 625 + deltaX, y: 340), radius: 35, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        roundpart4.lineWidth = 5
        
        roundpart4.stroke()
        
        let roundpart5 = UIBezierPath(arcCenter: CGPoint(x: 75 + deltaX, y: 340), radius: 17.5, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: false)
        
        roundpart5.lineWidth = 5
        
        roundpart5.stroke()
        
        let roundpart6 = UIBezierPath(arcCenter: CGPoint(x: 625 + deltaX, y: 340), radius: 17.5, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        roundpart6.lineWidth = 5
        
        roundpart6.stroke()
        
        for i in 0 ... 6 {
            let roadwheel = UIBezierPath(arcCenter: CGPoint(x: 125 + 75 * CGFloat(i) + deltaX, y: 400), radius: 25, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
            roadwheel.lineWidth = 5
            
            roadwheel.stroke()
        }
        
        for i in 0 ... 6 {
            let roadwheel2 = UIBezierPath(arcCenter: CGPoint(x: 125 + 75 * CGFloat(i) + deltaX, y: 400), radius: 12.5, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 2, clockwise: true)
            roadwheel2.lineWidth = 5
            
            roadwheel2.stroke()
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

        part.stroke()
        
          #colorLiteral(red: 0.352917254, green: 0.785050571, blue: 0.981100738, alpha: 1).setFill()
        
        for i in 0 ... 15 {
            let pencil = UIBezierPath()
            
            pencil.lineWidth = 5

            pencil.move(to: CGPoint(x: 120 + 30 * CGFloat(i) + deltaX, y: 420))
            pencil.addLine(to: CGPoint(x: 120 + 30 * CGFloat(i) + deltaX, y: 430))

            pencil.stroke()
        }
    }
    
    func drawTop() {
        let pencil2 = UIBezierPath()
        
        pencil2.move(to: CGPoint(x: 40 + deltaX, y: 295))
        pencil2.addLine(to: CGPoint(x: 90 + deltaX, y: 275))
        pencil2.addLine(to: CGPoint(x: 610 + deltaX, y: 275))
        pencil2.addLine(to: CGPoint(x: 660 + deltaX, y: 295))
        pencil2.addLine(to: CGPoint(x: 660 + deltaX, y: 315))
        pencil2.addLine(to: CGPoint(x: 610 + deltaX, y: 295))
        pencil2.addLine(to: CGPoint(x: 90 + deltaX, y: 295))
        pencil2.addLine(to: CGPoint(x: 40 + deltaX, y: 315))
        
        pencil2.close()
        #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1).setFill()
        
        pencil2.fill()
        
        pencil2.stroke()
        
        let pencil3 = UIBezierPath()
        
      pencil3.move(to: CGPoint(x: 150 + deltaX, y: 225))
      pencil3.addLine(to: CGPoint(x: 150 + deltaX, y: 275))
      pencil3.addLine(to: CGPoint(x: 550 + deltaX, y: 275))
      pencil3.addLine(to: CGPoint(x: 550 + deltaX, y: 225))
        
        pencil3.close()
        
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        
        pencil3.fill()
        
        pencil3.stroke()
        
        let pencil4 = UIBezierPath()
        
        pencil4.move(to: CGPoint(x: 205 + deltaX, y: 225))
        pencil4.addLine(to: CGPoint(x: 225 + deltaX, y: 175))
        pencil4.addLine(to: CGPoint(x: 500 + deltaX, y: 175))
        pencil4.addLine(to: CGPoint(x: 525 + deltaX, y: 225))
        
        pencil4.close()
        
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        
        pencil4.fill()
        
        pencil4.stroke()
        
        let pencil5 = UIBezierPath()
        
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        
        pencil5.move(to: CGPoint(x: 150 + deltaX, y: 180))
        pencil5.addLine(to: CGPoint(x: 150 + deltaX, y: 205))
        pencil5.addLine(to: CGPoint(x: 213 + deltaX, y: 205))
        pencil5.addLine(to: CGPoint(x: 223 + deltaX, y: 180))
        pencil5.addLine(to: CGPoint(x: 150 + deltaX, y: 180))
        
        pencil5.close()
    
        pencil5.fill()
        
        pencil5.stroke()
        
        let pencil = UIBezierPath()
        
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()

        pencil.move(to: CGPoint(x: 0 + deltaX, y: 185))
        pencil.addLine(to: CGPoint(x: 0 + deltaX, y: 200))
        pencil.addLine(to: CGPoint(x: 150 + deltaX, y: 200))
        pencil.addLine(to: CGPoint(x: 150 + deltaX, y: 185))
        pencil.addLine(to: CGPoint(x: 0 + deltaX, y: 185))
        pencil.addLine(to: CGPoint(x: 0 + deltaX, y: 185))
                
        pencil.close()
        
        pencil.fill()
        
        pencil.stroke()
    }
}
