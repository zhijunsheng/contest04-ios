//
//  CanvasView.swift
//  militaryTank
//
//  Created by Elaine on 2020-10-13.
//

import UIKit

class CanvasView: UIView {

    // what's the difference between defining locationX and defining deltaX?
    var deltaX: CGFloat = 0
    
    override func draw(_ rect: CGRect) {
        drawRectangle(centerX: 400 + deltaX, centerY: 385, sideWidth: 70 * 4, sideHeight: 70 * 2)
        let rotation: CGFloat = deltaX / 30
        
        let crayon2 = UIBezierPath(arcCenter: CGPoint(x: 400 + deltaX, y: 455), radius: 15, startAngle: 0 * CGFloat.pi + rotation, endAngle: 2 * CGFloat.pi + rotation, clockwise: true)
         
        crayon2.close()
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setFill()
        crayon2.fill()
        crayon2.stroke()
    }
    func drawRectangle(centerX: CGFloat, centerY: CGFloat, sideWidth: CGFloat, sideHeight: CGFloat) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: centerX - sideWidth / 2, y: centerY - sideHeight / 2))
        pencil.addLine(to: CGPoint(x: centerX - sideWidth / 2, y: centerY + sideHeight / 2))
        pencil.addLine(to: CGPoint(x: centerX + sideWidth / 2, y: centerY + sideHeight / 2))
        pencil.addLine(to: CGPoint(x: centerX + sideWidth / 2, y: centerY - sideHeight / 2))
        pencil.close()
        pencil.stroke()
    }

}
