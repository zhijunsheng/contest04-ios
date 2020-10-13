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
        
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 100, y: 100))
        pencil.addLine(to: CGPoint(x: 300, y: 100))
        
        pencil.stroke()

    }
    
    func drawRoundTrack() {
        let roundpart1 = UIBezierPath(arcCenter: CGPoint(x: 100, y: 400), radius: 25, startAngle: CGFloat.pi * 1.5, endAngle: CGFloat.pi * 0.5, clockwise: false)
        
        roundpart1.stroke()
        
        let roundpart2 = UIBezierPath(arcCenter: CGPoint(x: 400, y: 400), radius: 25, startAngle: CGFloat.pi * 1.5, endAngle: CGFloat.pi * 0.5, clockwise: true)
        
        roundpart2.stroke()
    }
    
    func drawTires() {
        let wheels = UIBezierPath(arcCenter: CGPoint(x: 100, y: 400), radius: 25, startAngle: CGFloat.pi * 1.5, endAngle: CGFloat.pi * 0.5, clockwise: false)
        
        wheels.stroke()
        
        let wheelPart = UIBezierPath()
        
        wheelPart.move(to: CGPoint(x: 100, y: 375))
        wheelPart.addLine(to: CGPoint(x: 400, y: 375))
        
        wheelPart.move(to: CGPoint(x: 100, y: 425))
        wheelPart.addLine(to: CGPoint(x: 400, y: 425))
        
        wheelPart.stroke()
        
    }
    

}
