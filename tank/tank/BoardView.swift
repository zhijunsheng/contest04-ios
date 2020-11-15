//
//  BoardView.swift
//  tank
//
//  Created by Halwong on 2020/10/18.
//

import UIKit

class BoardView: UIView {
    
    let wheelsRadius: CGFloat = 25
    var delta: CGFloat = 0

    override func draw(_ rect: CGRect) {
        wheels()
        body()
        driverCabinet()
        cannon()
        track()
    }
    
    func wheels() {
        for i in 0 ..< 6 {
            let wheel = UIBezierPath(arcCenter: CGPoint(x: 195 + wheelsRadius * CGFloat(i * 2) + delta, y: 500), radius: wheelsRadius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            wheel.stroke()
            
            let smallWheel = UIBezierPath(arcCenter: CGPoint(x: 155 + delta, y: 490), radius: 15, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            smallWheel.stroke()
            
            let smallWheel2 = UIBezierPath(arcCenter: CGPoint(x: 160 + wheelsRadius * 13 + delta, y: 490), radius: 15, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            smallWheel2.stroke()
        }
    }
    
    func body() {
        let body = UIBezierPath()
        body.move(to: CGPoint(x: 125 + delta, y: 425))
        body.addLine(to: CGPoint(x: 125 + delta, y: 475))
        body.addLine(to: CGPoint(x: 200 + wheelsRadius * 12 + delta, y: 475))
        body.addLine(to: CGPoint(x: 200 + wheelsRadius * 14 + delta, y: 430))
        body.close()
        body.stroke()
    }
    
    func driverCabinet() {
        let circle = UIBezierPath()
        circle.move(to: CGPoint(x: 225 + delta, y: 380))
        circle.addLine(to: CGPoint(x: 225 + delta, y: 430))
        circle.move(to: CGPoint(x: 225 + delta, y: 380))
        circle.addLine(to: CGPoint(x: 450 + delta, y: 380))
        circle.addLine(to: CGPoint(x: 450 + delta, y: 430))
        
        circle.stroke()
    }
    
    func cannon() {
        let cannon = UIBezierPath()
        cannon.move(to: CGPoint(x: 450 + delta, y: 395))
        cannon.addLine(to: CGPoint(x: 650 + delta, y: 395))
        cannon.addLine(to: CGPoint(x: 650 + delta, y: 410))
        cannon.addLine(to: CGPoint(x: 450 + delta, y: 410))
        cannon.stroke()
    }
    
    func track() {
        let track = UIBezierPath()
        
        track.move(to: CGPoint(x: 145 + delta, y: 502))
        track.addLine(to: CGPoint(x: 190 + delta, y: 525))
        
        track.move(to: CGPoint(x: 200 + delta, y: 500 + wheelsRadius))
        track.addLine(to: CGPoint(x: 200 + wheelsRadius * 10 + delta, y: 500 + wheelsRadius))
        
        track.move(to: CGPoint(x: 210 + wheelsRadius * 10 + delta, y: 520))
        track.addLine(to: CGPoint(x: 248 + wheelsRadius * 10 + delta, y: 499))
        
        track.stroke()
    }
    
}
