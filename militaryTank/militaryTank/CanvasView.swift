//
//  CanvasView.swift
//  militaryTank
//
//  Created by Elaine on 2020-10-13.
//

import UIKit

class CanvasView: UIView {

    var locationX: CGFloat = 200 - 50
    override func draw(_ rect: CGRect) {
        drawRectangle(centerX: locationX, centerY: 385, sideWidth: 70 * 4, sideHeight: 70 * 2)
        let rotation: CGFloat = locationX / 30
        
        let crayon2 = UIBezierPath(arcCenter: CGPoint(x: 20, y: 455), radius: 15, startAngle: 0 * CGFloat.pi + rotation, endAngle: 2 * CGFloat.pi + rotation, clockwise: true)
         
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
