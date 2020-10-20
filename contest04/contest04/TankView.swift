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
    var delta: CGFloat = 0
    override func draw(_ rect: CGRect) {
        let bCannonMain = UIBezierPath(rect: CGRect(x: 450 + delta, y: 235, width: 300, height: 30))
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        bCannonMain.fill()
        bCannonMain.stroke()
        
        let bCannonMid = UIBezierPath(rect: CGRect(x: 555 + delta, y: 233, width: 55, height: 34))
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        bCannonMid.fill()
        bCannonMid.stroke()
        
        let bCannonHead = UIBezierPath(rect: CGRect(x: 730 + delta, y: 233, width: 20, height: 34))
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        bCannonHead.fill()
        bCannonHead.stroke()
        
        let tCannonHead = UIBezierPath(rect: CGRect(x: 450 + delta, y: 166, width: 50, height: 13))
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        tCannonHead.fill()
        tCannonHead.stroke()
        
        let tCannonMid = UIBezierPath(rect: CGRect(x: 350 + delta, y: 162, width: 100, height: 21))
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        tCannonMid.fill()
        tCannonMid.stroke()
        
        let tCannonBack = UIBezierPath(rect: CGRect(x: 385 + delta, y: 158, width: 30, height: 29))
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        tCannonBack.fill()
        tCannonBack.stroke()
        
        let tCannonBase = UIBezierPath(rect: CGRect(x: 300 + delta, y: 175, width: 85, height: 25))
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        tCannonBase.fill()
        tCannonBase.stroke()
        
        let tCannonJoint = UIBezierPath(arcCenter: CGPoint(x: 380 + delta, y: 170), radius: 20, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        tCannonJoint.fill()
        tCannonJoint.stroke()
        
        let head = UIBezierPath()
        head.move(to: CGPoint(x: 130 + delta, y: 200))
        head.addLine(to: CGPoint(x: 450 + delta, y: 200))
        head.addLine(to: CGPoint(x: 475 + delta, y: 300))
        head.addLine(to: CGPoint(x: 200 + delta, y: 300))
        head.addLine(to: CGPoint(x: 100 + delta, y: 290))
        head.close()
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        head.fill()
        head.stroke()
        
        let c = UIBezierPath(rect: CGRect(x: 200 + delta, y: 300, width: 225, height: 10))
        #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1).setFill()
        c.fill()
        
        let filler = UIBezierPath(rect: CGRect(x: 70 + delta, y: 395, width: 485, height: 65))
        #colorLiteral(red: 0.1291202911, green: 0.1763431079, blue: 0.124812714, alpha: 1).setFill()
        filler.fill()
        
        for i in 0..<2 {
            let tWheel = UIBezierPath(arcCenter: CGPoint(x: 47.5 + 530 * CGFloat(i) + delta, y: 400), radius: 37.5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
            #colorLiteral(red: 0.4145729595, green: 0.4758935174, blue: 0.3643514555, alpha: 1).setFill()
            #colorLiteral(red: 0.3014669192, green: 0.3411764801, blue: 0.2717756402, alpha: 1).setStroke()
            tWheel.lineWidth = 5
            tWheel.fill()
            tWheel.stroke()
            
            let tWheelMid = UIBezierPath(arcCenter: CGPoint(x: 47.5 + 530 * CGFloat(i) + delta, y: 400), radius: 20, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
            #colorLiteral(red: 0.4145729595, green: 0.4758935174, blue: 0.3643514555, alpha: 1).setFill()
            #colorLiteral(red: 0.3014669192, green: 0.3411764801, blue: 0.2717756402, alpha: 1).setStroke()
            tWheelMid.lineWidth = 7
            tWheelMid.fill()
            tWheelMid.stroke()
            
            for diff in 0..<8 {
                let tWheelDecor = UIBezierPath(arcCenter: CGPoint(x: 47.5 + 530 * CGFloat(i) + delta, y: 400), radius: 25, startAngle: (CGFloat.pi * 2 / 16) * (CGFloat(diff) * 2) + CGFloat.pi * 2 / 32, endAngle:  (CGFloat.pi * 2 / 16) * (CGFloat(diff) * 2 + 1) + CGFloat.pi * 2 / 32, clockwise: true)
                #colorLiteral(red: 0.4145729595, green: 0.4758935174, blue: 0.3643514555, alpha: 1).setFill()
                #colorLiteral(red: 0.3014669192, green: 0.3411764801, blue: 0.2717756402, alpha: 1).setStroke()
                tWheelDecor.lineWidth = 8
                tWheelDecor.fill()
                tWheelDecor.stroke()
            }
        }
        
        for i in 0..<6 {
            let bWheel = UIBezierPath(arcCenter: CGPoint(x: 110 + 81 * CGFloat(i) + delta, y: 452.5), radius: 37.5, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
            #colorLiteral(red: 0.4145729595, green: 0.4758935174, blue: 0.3643514555, alpha: 1).setFill()
            #colorLiteral(red: 0.3014669192, green: 0.3411764801, blue: 0.2717756402, alpha: 1).setStroke()
            bWheel.lineWidth = 5
            bWheel.fill()
            bWheel.stroke()
            
            let bWheelMid = UIBezierPath(arcCenter: CGPoint(x: 110 + 81 * CGFloat(i) + delta, y: 452.5), radius: 20, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
            #colorLiteral(red: 0.4145729595, green: 0.4758935174, blue: 0.3643514555, alpha: 1).setFill()
            #colorLiteral(red: 0.3014669192, green: 0.3411764801, blue: 0.2717756402, alpha: 1).setStroke()
            bWheelMid.lineWidth = 7
            bWheelMid.fill()
            bWheelMid.stroke()
            
            for diff in 0..<8 {
                let bWheelDecor = UIBezierPath(arcCenter: CGPoint(x: 110 + 81 * CGFloat(i) + delta, y: 452.5), radius: 25, startAngle: (CGFloat.pi * 2 / 16) * (CGFloat(diff) * 2) + CGFloat.pi * 2 / 32, endAngle:  (CGFloat.pi * 2 / 16) * (CGFloat(diff) * 2 + 1) + CGFloat.pi * 2 / 32, clockwise: true)
                #colorLiteral(red: 0.4145729595, green: 0.4758935174, blue: 0.3643514555, alpha: 1).setFill()
                #colorLiteral(red: 0.3014669192, green: 0.3411764801, blue: 0.2717756402, alpha: 1).setStroke()
                bWheelDecor.lineWidth = 8
                bWheelDecor.fill()
                bWheelDecor.stroke()
            }
        }

//        let cover = UIBezierPath()
//        cover.move(to: CGPoint(x: 85, y: 400))
//        cover.addLine(to: CGPoint(x: 110, y: 415))
//        cover.addLine(to: CGPoint(x: 515, y: 415))
//        cover.addLine(to: CGPoint(x: 540, y: 400))
//        cover.close()
//        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
//        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
//        cover.fill()
//        cover.stroke()

        let track = UIBezierPath()
        track.addArc(withCenter: CGPoint(x: 47.5 + delta, y: 400), radius: 37.5, startAngle: 0, endAngle: CGFloat.pi * 0.7, clockwise: false)
        track.addArc(withCenter: CGPoint(x: 110 + delta, y: 452.5), radius: 37.5, startAngle: CGFloat.pi * 0.745, endAngle: CGFloat.pi * 0.5, clockwise: false)
//        track.move(to: CGPoint(x: 110, y: 495))
//        track.addLine(to: CGPoint(x: 515, y: 495))
        track.addArc(withCenter: CGPoint(x: 515 + delta, y: 452.5), radius: 37.5, startAngle: CGFloat.pi * 0.5, endAngle: CGFloat.pi * 0.265, clockwise: false)
        track.addArc(withCenter: CGPoint(x: 577.5 + delta, y: 400), radius: 37.5, startAngle: CGFloat.pi * 0.3, endAngle: CGFloat.pi, clockwise: false)
        #colorLiteral(red: 0.1816306606, green: 0.1826522935, blue: 0.1284751265, alpha: 1).setStroke()
        track.lineWidth = 20
        track.stroke()
        
        let body1 = UIBezierPath()
        body1.move(to: CGPoint(x: 25 + delta, y: 310))
        body1.addLine(to: CGPoint(x: 585 + delta, y: 310))
        body1.addLine(to: CGPoint(x: 625 + delta, y: 365))
        body1.addLine(to: CGPoint(x: delta, y: 365))
        body1.close()
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        body1.fill()
        body1.stroke()
        let body2 = UIBezierPath(rect: CGRect(x: delta, y: 365, width: 625, height: 35))
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        body2.fill()
        body2.stroke()
        
        let ground = UIBezierPath(rect: CGRect(x: 0, y: 500, width: bounds.width, height: bounds.height - 500))
        #colorLiteral(red: 0.7125160531, green: 0.4911440497, blue: 0.2568493151, alpha: 1).setFill()
        ground.fill()
    }

}
