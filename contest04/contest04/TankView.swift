//
//  TankView.swift
//  contest04
//
//  Created by Peter Shi on 2020-10-12.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import UIKit

class TankView: UIView {
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let ground = UIBezierPath(rect: CGRect(x: 0, y: 500, width: bounds.width, height: bounds.height - 500))
        #colorLiteral(red: 0.7125160531, green: 0.4911440497, blue: 0.2568493151, alpha: 1).setFill()
        ground.fill()
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 100, y: 225))
        head.addLine(to: CGPoint(x: 450, y: 225))
        head.addLine(to: CGPoint(x: 475, y: 300))
        head.addLine(to: CGPoint(x: 200, y: 300))
        head.addLine(to: CGPoint(x: 75, y: 290))
        head.close()
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        head.fill()
        head.stroke()
        
        let c = UIBezierPath(rect: CGRect(x: 200, y: 300, width: 225, height: 10))
        #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1).setFill()
        c.fill()
        
        
        
        let body1 = UIBezierPath()
        body1.move(to: CGPoint(x: 25, y: 310))
        body1.addLine(to: CGPoint(x: 585, y: 310))
        body1.addLine(to: CGPoint(x: 625, y: 365))
        body1.addLine(to: CGPoint(x: 0, y: 365))
        body1.close()
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        body1.fill()
        body1.stroke()
        let body2 = UIBezierPath(rect: CGRect(x: 0, y: 365, width: 625, height: 35))
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        body2.fill()
        body2.stroke()
    }

}
