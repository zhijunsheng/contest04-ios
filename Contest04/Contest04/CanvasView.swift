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
    let offset: CGFloat = 600
    let d: CGFloat = 110/100
    
    override func draw(_ rect: CGRect) {
        tank1()
        tank2()
        tank3()
     }

    func tank2() {
        body()
        circle1()
       i1()
    }
    
    func body() {
        let penci1l = UIBezierPath()
        penci1l.move(to: CGPoint(x: 300 - move - d, y: 330))
        penci1l.addLine(to: CGPoint(x: 12 - move, y: 330))
        penci1l.addLine(to: CGPoint(x: 12 - move, y: 340))
        penci1l.addLine(to: CGPoint(x: 300 - move, y: 340))
        penci1l.stroke()
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 300 - move, y: 320 ))
        pencil.addLine(to: CGPoint(x: 300 - move, y: 400))
        pencil.addLine(to: CGPoint(x: 550 - move, y: 400))
        pencil.addLine(to: CGPoint(x: 550 - move, y: 500))
        pencil.addLine(to: CGPoint(x: 100 - move, y: 500))
        pencil.addLine(to: CGPoint(x: 100 - move, y: 400))
        pencil.addLine(to: CGPoint(x: 150 - move, y: 400))
        pencil.addLine(to: CGPoint(x: 150 - move, y: 320))
        pencil.addLine(to: CGPoint(x: 300 - move, y: 320))
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
        pemcdf.move(to: CGPoint(x: 130 - move, y: 400))
        pemcdf.addLine(to: CGPoint(x: 130 - move, y: 360))
        pemcdf.addLine(to: CGPoint(x: 150 - move, y: 360))
        pemcdf.move(to: CGPoint(x: 100 - move, y: 470))
        pemcdf.addLine(to: CGPoint(x: 70 - move, y: 470))
        pemcdf.addLine(to: CGPoint(x: 70 - move, y: 440))
        pemcdf.addLine(to: CGPoint(x: 100 - move, y: 440))
        pemcdf.move(to: CGPoint(x: 550 - move, y: 450))
        pemcdf.addLine(to: CGPoint(x: 670 - move, y: 490))
        pemcdf.addLine(to: CGPoint(x: 670 - move, y: 500))
        pemcdf.addLine(to: CGPoint(x: 550 - move, y: 500))
        let wheel = UIBezierPath(arcCenter: CGPoint(x: 670 - move, y: 495), radius: 70, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        wheel.stroke()
        let interesting = UIBezierPath(arcCenter: CGPoint(x: 670 - move, y: 495), radius: 80, startAngle: 0 * CGFloat.pi - move / 80, endAngle: 1.5 * CGFloat.pi - move / 80, clockwise: false)
        interesting.addLine(to: CGPoint(x: 670 - move, y: 495))
        interesting.close()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        interesting.fill()
        interesting.stroke()
        let interesting1 = UIBezierPath(arcCenter: CGPoint(x: 670 - move, y: 495), radius: 80, startAngle: 1 * CGFloat.pi - move / 80, endAngle: 0.5 * CGFloat.pi - move / 80, clockwise: false)
        interesting1.addLine(to: CGPoint(x: 670 - move, y: 495))
        interesting1.close()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        interesting1.fill()
        interesting1.stroke()
        pemcdf.close()
        pemcdf.stroke()
       
        for i in 1..<9 {
            let wheel = UIBezierPath(arcCenter: CGPoint(x: 300 - move + CGFloat(i) * 10, y: 200), radius: 5, startAngle: 1 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
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
            let w = UIBezierPath(arcCenter: CGPoint(x: 150 - move + CGFloat(i) * 10, y: 300), radius: 5, startAngle: 1 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            w.stroke()
        }
    }
    
    func circle1() {
        for i in 1..<10 {
         let wheel = UIBezierPath(arcCenter: CGPoint(x: 75 - move + CGFloat(i) * 50, y: 525), radius: 25, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
         wheel.stroke()
            let interesting = UIBezierPath(arcCenter: CGPoint(x: 75 - move + CGFloat(i) * 50, y: 525), radius: 25, startAngle: 0 * CGFloat.pi - move / 25, endAngle: 1.5 * CGFloat.pi - move / 25, clockwise: false)
            interesting.addLine(to: CGPoint(x: 75 - move + CGFloat(i) * 50, y: 525))
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
        pencil.move(to: CGPoint(x: 600 + offset - move, y: 400))
        pencil.addLine(to: CGPoint(x: 200 + offset - move, y: 400))
        pencil.addLine(to: CGPoint(x: 300 + offset - move, y: 320))
        pencil.addLine(to: CGPoint(x: 500 + offset - move, y: 320))
        pencil.addLine(to: CGPoint(x: 600 + offset - move, y: 400))
        
        pencil.move(to: CGPoint(x: 600 + offset - move, y: 400))
        pencil.addLine(to: CGPoint(x: 600 + offset - move, y: 450))
        pencil.addLine(to: CGPoint(x: 200 + offset - move, y: 450))
        pencil.addLine(to: CGPoint(x: 200 + offset - move, y: 400))
        
        pencil.move(to: CGPoint(x: 120 + offset - move, y: 330))
        pencil.addLine(to: CGPoint(x: 290 + offset - move, y: 330))
        pencil.move(to: CGPoint(x: 120 + offset - move, y: 360))
        pencil.addLine(to: CGPoint(x: 250 + offset - move, y: 360))
        pencil.move(to: CGPoint(x: 120 + offset - move, y: 330))
        pencil.addLine(to: CGPoint(x: 120 + offset - move, y: 360))
        pencil.stroke()
        
        pencil.move(to: CGPoint(x: 300 + offset - move, y: 320))
        pencil.addLine(to: CGPoint(x: 300 + offset - move, y: 260))
        pencil.addLine(to: CGPoint(x: 500 + offset - move, y: 260))
        pencil.addLine(to: CGPoint(x: 500 + offset - move, y: 320))
        pencil.stroke()
        
        for i in 1..<4 {
            let wheel = UIBezierPath(arcCenter: CGPoint(x: 275 + offset - move + CGFloat(i) * 50, y: 260), radius: 25, startAngle: 1 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            wheel.stroke()
        }
        
        
        let l = UIBezierPath()
        for i in 0..<5 {
            l.move(to: CGPoint(x: 320 + offset - move + CGFloat(i) * 45, y: 320))
            l.addLine(to: CGPoint(x: 350 + offset - move + CGFloat(i) * 45, y: 320))
            l.addLine(to: CGPoint(x: 200 + offset - move + CGFloat(i) * 45, y: 400))
            l.close()
        }
        
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setFill()
        l.fill()
        l.stroke()
        
        let l1 = UIBezierPath()
        for i in 0..<5 {
            l1.move(to: CGPoint(x: 200 + offset - move + CGFloat(i) * 45, y: 400))
            l1.addLine(to: CGPoint(x: 245 + offset - move + CGFloat(i) * 45, y: 400))
            l1.addLine(to: CGPoint(x: 200 + offset - move + CGFloat(i) * 45, y: 450))
            l1.close()
        }
        
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setFill()
        l1.fill()
        l1.stroke()
        
    }
    
    func circle() {
        
        for i in 1..<9 {
            let wheel = UIBezierPath(arcCenter: CGPoint(x: 175 + offset - move + CGFloat(i) * 50, y: 475), radius: 25, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            wheel.stroke()
            let interesting = UIBezierPath(arcCenter: CGPoint(x: 175 + offset - move + CGFloat(i) * 50, y: 475), radius: 25, startAngle: 0 * CGFloat.pi - move / 25, endAngle: 1.5 * CGFloat.pi - move / 25, clockwise: false)
            interesting.addLine(to: CGPoint(x: 175 + offset - move +  CGFloat(i) * 50, y: 475))
            interesting.close()
            #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
            interesting.fill()
            interesting.stroke()
        }
    }
    
    func i() {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 575 + offset - move, y: 500))
        pencil.addLine(to: CGPoint(x: 225 + offset - move, y: 500))
        pencil.stroke()
        
        
    }
    
    func tank3() {
           goliath()
    }
    
    func goliath() {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 700 + offset - move, y: 500))
        pencil.addLine(to: CGPoint(x: 700 + offset - move, y: 450))
        pencil.addLine(to: CGPoint(x: 816 + offset - move, y: 450))
        pencil.addLine(to: CGPoint(x: 816 + offset - move, y: 500))
        pencil.addLine(to: CGPoint(x: 700 + offset - move, y: 500))
        pencil.move(to: CGPoint(x: 675 + offset - move, y: 500))
        pencil.addLine(to: CGPoint(x: 841 + offset - move, y: 500))
        pencil.move(to: CGPoint(x: 675 + offset - move, y: 450))
        pencil.addLine(to: CGPoint(x: 841 + offset - move, y: 450))
        pencil.stroke()
        for i in 0..<2 {
            let wheel = UIBezierPath(arcCenter: CGPoint(x: 675 +  CGFloat(i) * 166 + offset - move, y: 475), radius: 25, startAngle: 0 * CGFloat.pi, endAngle:  2 * CGFloat.pi, clockwise: true)
            wheel.stroke()
                 
           let interesting = UIBezierPath(arcCenter: CGPoint(x: 675 +  CGFloat(i) * 166 + offset - move, y: 475), radius: 30, startAngle: 0 * CGFloat.pi - move / 25, endAngle: 1.5 * CGFloat.pi - move / 25, clockwise: false)
           interesting.addLine(to: CGPoint(x: 675 - move + offset + CGFloat(i) * 166, y: 475))
           interesting.close()
           #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
           interesting.fill()
           interesting.stroke()
        }
        
        let path = UIBezierPath()
        let p1 = CGPoint(x: 123, y: 234)
        let p2 = CGPoint(x: 213, y: 333)
        path.move(to: p1)
        path.addLine(to: p2)
    }
}
