//
//  TankView.swift
//  Tank
//
//  Created by Corey Gao on 2020-11-16.
//  Copyright © 2020 Corey Gao. All rights reserved.
//

import UIKit

class TankView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        drawBody()
        drawWheels()
   
    }
    
    func drawWheels() {
        let circle = UIBezierPath(arcCenter: CGPoint(x: 560, y: 600), radius: 70, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle.stroke()

        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 300, y: 600), radius: 50, startAngle: 0.5 * CGFloat.pi, endAngle: 1.5 * CGFloat.pi, clockwise: true)
        circle1.stroke()
    
    }
        
    
    func drawBody()  {
        
        let pencil = UIBezierPath()
        let pencil1 = UIBezierPath()
        let pencil2 = UIBezierPath()
        pencil.move(to: CGPoint(x: 260, y: 530))
        pencil.addLine(to: CGPoint(x: 230, y: 400))
        pencil.addLine(to: CGPoint(x: 300, y: 350))
        pencil.addLine(to: CGPoint(x: 550, y: 350))
        pencil.addLine(to: CGPoint(x: 600, y: 450))
        pencil.close()
        #colorLiteral(red: 0.5714909346, green: 0.6085451749, blue: 0.5210322525, alpha: 1).setFill()
        pencil.fill()
        pencil.move(to: CGPoint(x: 430, y: 350))
        pencil.addLine(to: CGPoint(x: 430, y: 490))
        //pencil1
        pencil1.move(to: CGPoint(x: 260, y: 530))
        pencil1.addLine(to: CGPoint(x: 230, y: 400))
        pencil1.addLine(to: CGPoint(x: 300, y: 350))
        pencil1.addLine(to: CGPoint(x: 330, y: 350))
        pencil1.addLine(to: CGPoint(x: 430, y: 460))
        pencil1.addLine(to: CGPoint(x: 430, y: 490))
        pencil1.close()
        #colorLiteral(red: 0.5024733962, green: 0.5804930376, blue: 0.5001153592, alpha: 1).setFill()
        pencil1.fill()
        //pencil2
        pencil2.move(to: CGPoint(x: 300, y: 400))
        pencil2.addLine(to: CGPoint(x: 300, y: 440))
        pencil2.addLine(to: CGPoint(x: 400, y: 440))
        pencil2.addLine(to: CGPoint(x: 400, y: 400))
        pencil2.close()
        
        pencil2.move(to: CGPoint(x: 305, y: 410))
        pencil2.addLine(to: CGPoint(x: 305, y: 430))
        pencil2.addLine(to: CGPoint(x: 350, y: 430))
        pencil2.addLine(to: CGPoint(x: 350, y: 410))
        pencil2.addLine(to: CGPoint(x: 305, y: 410))
        
        pencil2.move(to: CGPoint(x: 355, y: 410))
        pencil2.addLine(to: CGPoint(x: 355, y: 430))
        pencil2.addLine(to: CGPoint(x: 395, y: 430))
        pencil2.addLine(to: CGPoint(x: 395, y: 410))
        pencil2.addLine(to: CGPoint(x: 355, y: 410))
        pencil2.lineWidth = 2
        #colorLiteral(red: 0.49368153, green: 0.5613868199, blue: 0.4559338813, alpha: 1).setFill()
        pencil2.fill()
        pencil2.stroke()
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        pencil.lineWidth = 2
        pencil.stroke()
    }
}
