//
//  TankView.swift
//  Tank
//
//  Created by Corey Gao on 2020-11-16.
//  Copyright © 2020 Corey Gao. All rights reserved.
//

import UIKit

class TankView: UIView {
    var deltaX: CGFloat = 0
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        drawBody()
        drawWheels()
 
        let arc = UIBezierPath(arcCenter: CGPoint(x: 560 + deltaX, y: 630), radius: 70, startAngle: 1.4 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        arc.addLine(to: CGPoint(x: 300 + deltaX, y: 695))
        arc.addArc(withCenter: CGPoint(x: 300 + deltaX, y: 645), radius: 50, startAngle: 0.5 * CGFloat.pi, endAngle: 1.4 * CGFloat.pi, clockwise: true)
        arc.close()
        arc.lineWidth = 7
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        arc.stroke()
        
    }
    
    func drawWheels() {
        let circle = UIBezierPath(arcCenter: CGPoint(x: 560 + deltaX, y: 630), radius: 70, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle.lineWidth = 2
        #colorLiteral(red: 0.5678678959, green: 0.6161957578, blue: 0.5416835301, alpha: 1).setFill()
        circle.fill()
        circle.stroke()
        
    let smallcircle = UIBezierPath(arcCenter: CGPoint(x: 560 + deltaX, y: 630), radius: 20, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
           smallcircle.lineWidth = 2
           #colorLiteral(red: 0.4044155082, green: 0.4317721826, blue: 0.3743674444, alpha: 1).setFill()
           smallcircle.fill()
           smallcircle.stroke()
               
        let circlesector = UIBezierPath(arcCenter: CGPoint(x: 560 + deltaX, y: 630), radius: 20, startAngle: 0 * CGFloat.pi + deltaX / 70, endAngle: 0.5 * CGFloat.pi + deltaX / 70, clockwise: true)
        circlesector.addLine(to: CGPoint(x: 560 + deltaX, y: 630))
        circlesector.close()
        circlesector.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circlesector.fill()
        circlesector.stroke()
        
        let circlesector1 = UIBezierPath(arcCenter: CGPoint(x: 560 + deltaX, y: 630), radius: 20, startAngle: 1 * CGFloat.pi + deltaX / 70, endAngle: 1.5 * CGFloat.pi + deltaX / 70, clockwise: true)
        circlesector1.addLine(to: CGPoint(x: 560 + deltaX, y: 630))
        circlesector1.close()
        circlesector1.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circlesector1.fill()
        circlesector1.stroke()
        
        
        //
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 300 + deltaX, y: 645), radius: 50, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle1.lineWidth = 2
        #colorLiteral(red: 0.5678678959, green: 0.6161957578, blue: 0.5416835301, alpha: 1).setFill()
        circle1.fill()
        circle1.stroke()
        
        let smallcircle1 = UIBezierPath(arcCenter: CGPoint(x: 300 + deltaX, y: 645), radius: 15, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        smallcircle1.lineWidth = 2
        #colorLiteral(red: 0.4044155082, green: 0.4317721826, blue: 0.3743674444, alpha: 1).setFill()
        smallcircle1.fill()
        smallcircle1.stroke()
        

        let circle1sector = UIBezierPath(arcCenter: CGPoint(x: 300 + deltaX, y: 645), radius: 15, startAngle: 0 * CGFloat.pi + deltaX / 50, endAngle: 0.5 * CGFloat.pi + deltaX / 50, clockwise: true)
        circle1sector.addLine(to: CGPoint(x: 300 + deltaX, y: 645))
        circle1sector.close()
        circle1sector.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circle1sector.fill()
        circle1sector.stroke()
               
        let circle1sector1 = UIBezierPath(arcCenter: CGPoint(x: 300 + deltaX, y: 645), radius: 15, startAngle: 1 * CGFloat.pi + deltaX / 50, endAngle: 1.5 * CGFloat.pi + deltaX / 50, clockwise: true)
        circle1sector1.addLine(to: CGPoint(x: 300 + deltaX, y: 645))
        circle1sector1.close()
        circle1sector1.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circle1sector1.fill()
        circle1sector1.stroke()
    
        
        //
    
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 400 + deltaX, y: 590), radius: 20, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle2.lineWidth = 2
        circle2.stroke()
        
        let circle3 = UIBezierPath(arcCenter: CGPoint(x: 440 + deltaX, y: 580), radius: 20, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle3.lineWidth = 2
        circle3.stroke()
    
        let circle4 = UIBezierPath(arcCenter: CGPoint(x: 386 + deltaX, y: 659), radius: 36, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle4.lineWidth = 2
        circle4.stroke()

        let circle5 = UIBezierPath(arcCenter: CGPoint(x: 458 + deltaX, y: 659), radius: 36, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle5.lineWidth = 2
        circle5.stroke()
        
    }
        
    func drawBody()  {
        
        let pencil = UIBezierPath()
        let pencil1 = UIBezierPath()
        let pencil2 = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 260 + deltaX, y: 530))
        pencil.addLine(to: CGPoint(x: 230 + deltaX, y: 400))
        pencil.addLine(to: CGPoint(x: 300 + deltaX, y: 350))
        pencil.addLine(to: CGPoint(x: 550 + deltaX, y: 350))
        pencil.addLine(to: CGPoint(x: 600 + deltaX, y: 450))
        pencil.close()
        #colorLiteral(red: 0.5714909346, green: 0.6085451749, blue: 0.5210322525, alpha: 1).setFill()
        pencil.fill()
        pencil.move(to: CGPoint(x: 430 + deltaX, y: 350))
        pencil.addLine(to: CGPoint(x: 430 + deltaX, y: 490))
        //pencil1
        pencil1.move(to: CGPoint(x: 260 + deltaX, y: 530))
        pencil1.addLine(to: CGPoint(x: 230 + deltaX, y: 400))
        pencil1.addLine(to: CGPoint(x: 300 + deltaX, y: 350))
        pencil1.addLine(to: CGPoint(x: 330 + deltaX, y: 350))
        pencil1.addLine(to: CGPoint(x: 430 + deltaX, y: 460))
        pencil1.addLine(to: CGPoint(x: 430 + deltaX, y: 490))
        pencil1.close()
        #colorLiteral(red: 0.5024733962, green: 0.5804930376, blue: 0.5001153592, alpha: 1).setFill()
        pencil1.fill()
        //pencil2
        pencil2.move(to: CGPoint(x: 300 + deltaX, y: 400))
        pencil2.addLine(to: CGPoint(x: 300 + deltaX, y: 440))
        pencil2.addLine(to: CGPoint(x: 400 + deltaX, y: 440))
        pencil2.addLine(to: CGPoint(x: 400 + deltaX, y: 400))
        pencil2.close()
        
        pencil2.move(to: CGPoint(x: 305 + deltaX, y: 410))
        pencil2.addLine(to: CGPoint(x: 305 + deltaX, y: 430))
        pencil2.addLine(to: CGPoint(x: 350 + deltaX, y: 430))
        pencil2.addLine(to: CGPoint(x: 350 + deltaX, y: 410))
        pencil2.addLine(to: CGPoint(x: 305 + deltaX, y: 410))
        
        pencil2.move(to: CGPoint(x: 355 + deltaX, y: 410))
        pencil2.addLine(to: CGPoint(x: 355 + deltaX, y: 430))
        pencil2.addLine(to: CGPoint(x: 395 + deltaX, y: 430))
        pencil2.addLine(to: CGPoint(x: 395 + deltaX, y: 410))
        pencil2.addLine(to: CGPoint(x: 355 + deltaX, y: 410))
        pencil2.lineWidth = 2
        #colorLiteral(red: 0.49368153, green: 0.5613868199, blue: 0.4559338813, alpha: 1).setFill()
        pencil2.fill()
        pencil2.stroke()
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        pencil.lineWidth = 2
        pencil.stroke()
    }
}


