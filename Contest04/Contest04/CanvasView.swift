//
//  CanvasView.swift
//  Contest04
//
//  Created by Lambert Lin on 2020/10/12.
//  Copyright © 2020 Lambert Lin. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    var move:CGFloat = 1
    
    override func draw(_ rect: CGRect) {
        tank()
        circle()
        i()
    }
    
    func tank() {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 600 - move, y: 400))
        pencil.addLine(to: CGPoint(x: 200 - move, y: 400))
        pencil.addLine(to: CGPoint(x: 300 - move, y: 320))
        pencil.addLine(to: CGPoint(x: 500 - move, y: 320))
        pencil.addLine(to: CGPoint(x: 600 - move, y: 400))
        
        pencil.move(to: CGPoint(x: 600 - move, y: 400))
        pencil.addLine(to: CGPoint(x: 600 - move, y: 450))
        pencil.addLine(to: CGPoint(x: 200 - move, y: 450))
        pencil.addLine(to: CGPoint(x: 200 - move, y: 400))
        
        pencil.move(to: CGPoint(x: 120 - move, y: 330))
        pencil.addLine(to: CGPoint(x: 290 - move, y: 330))
        pencil.move(to: CGPoint(x: 120 - move, y: 360))
        pencil.addLine(to: CGPoint(x: 250 - move, y: 360))
        pencil.move(to: CGPoint(x: 120 - move, y: 330))
        pencil.addLine(to: CGPoint(x: 120 - move, y: 360))
        pencil.stroke()
    }
    func circle() {
        for i in 1..<9 {
            let i = UIBezierPath(arcCenter: CGPoint(x: 175 - Int(move) + i * 50, y: 475), radius: 25, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            i.stroke()
        }
        let i = UIBezierPath(arcCenter: CGPoint(x: 550 - move, y: 345), radius: 25, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        i.stroke()
    }
    func i() {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 575 - move, y: 500))
        pencil.addLine(to: CGPoint(x: 225 - move, y: 500))
        pencil.stroke()
        
        
    }
}
