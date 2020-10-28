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
//        tank1()
          tank2()
    }
    
    // drawTrack, drawWheels, turret, cannon, body,
    
    func tank2() {
        body()
        circle1()
       i1()
    }
    func body() {
        let penci1l = UIBezierPath()
        penci1l.move(to: CGPoint(x: 300 - Int(move), y: 330))
        penci1l.addLine(to: CGPoint(x: 12 - Int(move), y: 330))
        penci1l.addLine(to: CGPoint(x: 12 - Int(move), y: 340))
        penci1l.addLine(to: CGPoint(x: 300 - Int(move), y: 340))
        penci1l.stroke()
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 300 - Int(move), y: 320 ))
        pencil.addLine(to: CGPoint(x: 300 - Int(move), y: 400))
        pencil.addLine(to: CGPoint(x: 550 - Int(move), y: 400))
        pencil.addLine(to: CGPoint(x: 550 - Int(move), y: 500))
        pencil.addLine(to: CGPoint(x: 100 - Int(move), y: 500))
        pencil.addLine(to: CGPoint(x: 100 - Int(move), y: 400))
        pencil.addLine(to: CGPoint(x: 150 - Int(move), y: 400))
        pencil.addLine(to: CGPoint(x: 150 - Int(move), y: 320))
        pencil.addLine(to: CGPoint(x: 300 - Int(move), y: 320))
        pencil.stroke()
        let pemcdf = UIBezierPath()
        pemcdf .move(to: CGPoint(x: 400 - move, y: 400))
        pemcdf .addLine(to: CGPoint(x: 400 - move, y: 350))
        pemcdf .addLine(to: CGPoint(x: 550 - move, y: 350))
        pemcdf .addLine(to: CGPoint(x: 550 - move, y: 400))
        pemcdf.move(to: CGPoint(x: 550 - move, y: 370))
        pemcdf.addLine(to: CGPoint(x: 600 - move, y: 370))
        pemcdf.addLine(to: CGPoint(x: 600 - move, y: 390))
        pemcdf.addLine(to: CGPoint(x: 550 - move, y: 390))
        pemcdf.move(to: CGPoint(x: 430 - move, y: 350))
        pemcdf.addLine(to: CGPoint(x: 430 - move, y: 300))
        pemcdf.addLine(to: CGPoint(x: 549 - move, y: 300))
        pemcdf.addLine(to: CGPoint(x: 549 - move, y: 350))
        pemcdf.move(to: CGPoint(x: 510 - move, y: 300))
        pemcdf.addLine(to: CGPoint(x: 510 - move, y: 250))
        pemcdf.move(to: CGPoint(x: 470 - move, y: 300))
        pemcdf.addLine(to: CGPoint(x: 470 - move, y: 250))
        pemcdf.move(to: CGPoint(x: 320 - move, y: 400))
        pemcdf.addLine(to: CGPoint(x: 320 - move, y: 400))
        pemcdf.addLine(to: CGPoint(x: 390 - move, y: 200))
        pemcdf.addLine(to: CGPoint(x: 390 - move, y: 400))
        pemcdf.move(to: CGPoint(x: 300 - move, y: 320))
        pemcdf.addLine(to: CGPoint(x: 300 - move, y: 200))
        pemcdf.addLine(to: CGPoint(x: 390 - move, y: 200))
        pemcdf.addLine(to: CGPoint(x: 390 - move, y: 320))
        pemcdf.close()
        pemcdf.stroke()
       
        for i in 1..<9 {
            let wheel = UIBezierPath(arcCenter: CGPoint(x: 300 - Int(move) + i * 10, y: 200), radius: 5, startAngle: 1 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            wheel.stroke()
        }
        let df = UIBezierPath()
        df.move(to: CGPoint(x: 150 - move, y: 320))
        df.addLine(to: CGPoint(x: 140 - move, y: 320))
        df.addLine(to: CGPoint(x: 140 - move, y: 300))
        df.addLine(to: CGPoint(x: 300 - move, y: 300))
        df.addLine(to: CGPoint(x: 300 - move, y: 320))
        df.stroke()
        
        for i in 1..<15 {
            let w = UIBezierPath(arcCenter: CGPoint(x: 150 - Int(move) + i * 10, y: 300), radius: 5, startAngle: 1 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            w.stroke()
        }
    }
    func circle1() {
        for i in 1..<10 {
         let wheel = UIBezierPath(arcCenter: CGPoint(x: 75 - Int(move) + i * 50, y: 525), radius: 25, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
         wheel.stroke()
            let interesting = UIBezierPath(arcCenter: CGPoint(x: 75 - Int(move) + i * 50, y: 525), radius: 25, startAngle: 0 * CGFloat.pi - move / 25, endAngle: 1.5 * CGFloat.pi - move / 25, clockwise: false)
            interesting.addLine(to: CGPoint(x: 75 - Int(move) + i * 50, y: 525))
            interesting.close()
            #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
            interesting.fill()
            interesting.stroke()
        }
    }
    func tank1() {
        tank()
        circle()
        i()
    }
    
    
   
    func i1() {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 525 - move, y: 550))
        pencil.addLine(to: CGPoint(x: 125 - move, y: 550))
        pencil.stroke()
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
        
        
        
        let l = UIBezierPath()
        for i in 0..<5 {
            l.move(to: CGPoint(x: 320 - Int(move) + i * 45, y: 320))
            l.addLine(to: CGPoint(x: 350 - Int(move) + i * 45, y: 320))
            l.addLine(to: CGPoint(x: 200 - Int(move) + i * 45, y: 400))
            l.close()
        }
        
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setFill()
        l.fill()
        l.stroke()
        
        let l1 = UIBezierPath()
        for i in 0..<5 {
            l1.move(to: CGPoint(x: 200 - Int(move) + i * 45, y: 400))
            l1.addLine(to: CGPoint(x: 245 - Int(move) + i * 45, y: 400))
            l1.addLine(to: CGPoint(x: 200 - Int(move) + i * 45, y: 450))
            l1.close()
        }
        
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setFill()
        l1.fill()
        l1.stroke()
        
    }
    func circle() {
        for i in 1..<9 {
            let wheel = UIBezierPath(arcCenter: CGPoint(x: 175 - Int(move) + i * 50, y: 475), radius: 25, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            wheel.stroke()
            
        }
        let i = UIBezierPath(arcCenter: CGPoint(x: 550 - move, y: 345), radius: 25, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        i.move(to: CGPoint(x: 550 - move, y: 320))
        i.addLine(to: CGPoint(x: 575 - move, y: 320))
        i.addLine(to: CGPoint(x: 575 - move, y: 370))
        i.addLine(to: CGPoint(x: 550 - move, y: 370))
        i.stroke()
        let interesting = UIBezierPath(arcCenter: CGPoint(x: 175 - Int(move) + 50, y: 475), radius: 25, startAngle: 0 * CGFloat.pi - move / 25, endAngle: 1.5 * CGFloat.pi - move / 25, clockwise: false)
        interesting.addLine(to: CGPoint(x: 175 - Int(move) + 50, y: 475))
        interesting.close()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        interesting.fill()
        interesting.stroke()
    }
    func i() {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 575 - move, y: 500))
        pencil.addLine(to: CGPoint(x: 225 - move, y: 500))
        pencil.stroke()
        
        
    }
}
