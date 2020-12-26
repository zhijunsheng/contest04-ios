import UIKit
class TankView: UIView {
    
    var piLength: CGFloat = 0
    var xMove: CGFloat = 0
    var boomMove: CGFloat = 0
    var boommMove: CGFloat = 0
    
    override func draw(_ rect: CGRect) {
        
        let image1 = UIImage(named: "bullet")
        image1?.draw(in: CGRect(x: 340 + boomMove + xMove, y: 85 + boommMove, width: 100, height: 50))
        let image2 = UIImage(named: "fire2")
        image2?.draw(in: CGRect(x: 500, y: 180, width: 150, height: 150))
        drawShapeSix()
        drawWheels()
        drawlines()
        drawEngine()
        drawLight()
    }
    func drawWheels() {
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
        let wheel1 = UIBezierPath(ovalIn: CGRect(x: 100 + xMove, y: 200, width: 50, height: 50))
        wheel1.stroke()
        wheel1.fill()
        
        let wheel2 = UIBezierPath(ovalIn: CGRect(x: 170 + xMove, y: 200, width: 100, height: 100))
        wheel2.stroke()
        wheel2.fill()
        
        let wheel3 = UIBezierPath(ovalIn: CGRect(x: 290 + xMove, y: 200, width: 100, height: 100))
        wheel3.stroke()
        wheel3.fill()
        
        let wheel4 = UIBezierPath(ovalIn: CGRect(x: 410 + xMove, y: 200, width: 100, height: 100))
        wheel4.stroke()
        wheel4.fill()
        
        let wheel5 = UIBezierPath(ovalIn: CGRect(x: 530 + xMove, y: 200, width: 50, height: 50))
        wheel5.stroke()
        wheel5.fill()
        
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setFill()
        let l1wheel2 = UIBezierPath(arcCenter: CGPoint(x: 220 + xMove, y: 250), radius: 50, startAngle: piLength, endAngle: CGFloat.pi / 2 + piLength, clockwise: true)
        l1wheel2.fill()
        let l2wheel2 = UIBezierPath(arcCenter: CGPoint(x: 220 + xMove, y: 250), radius: 50, startAngle: CGFloat.pi + piLength, endAngle: CGFloat.pi * 1.5 + piLength, clockwise: true)
        l2wheel2.fill()
        
        let l1wheel3 = UIBezierPath(arcCenter: CGPoint(x: 340 + xMove, y: 250), radius: 50, startAngle: piLength, endAngle: CGFloat.pi / 2 + piLength, clockwise: true)
        l1wheel3.fill()
        let l2wheel3 = UIBezierPath(arcCenter: CGPoint(x: 340 + xMove, y: 250), radius: 50, startAngle: CGFloat.pi + piLength, endAngle: CGFloat.pi * 1.5 + piLength, clockwise: true)
        l2wheel3.fill()
        
        let l1wheel4 = UIBezierPath(arcCenter: CGPoint(x: 460 + xMove, y: 250), radius: 50, startAngle: piLength, endAngle: CGFloat.pi / 2 + piLength, clockwise: true)
        l1wheel4.fill()
        let l2wheel4 = UIBezierPath(arcCenter: CGPoint(x: 460 + xMove, y: 250), radius: 50, startAngle: CGFloat.pi + piLength, endAngle: CGFloat.pi * 1.5 + piLength, clockwise: true)
        l2wheel4.fill()
        
        #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1).setFill()
        let l1wheel1 = UIBezierPath(arcCenter: CGPoint(x: 125 + xMove, y: 225), radius: 25, startAngle: piLength * 2, endAngle: CGFloat.pi / 2 + piLength * 2, clockwise: true)
        l1wheel1.fill()
        let l2wheel1 = UIBezierPath(arcCenter: CGPoint(x: 125 + xMove, y: 225), radius: 25, startAngle: CGFloat.pi + piLength * 2, endAngle: CGFloat.pi * 1.5 + piLength * 2, clockwise: true)
        l2wheel1.fill()
        
        let l1wheel5 = UIBezierPath(arcCenter: CGPoint(x: 555 + xMove, y: 225), radius: 25, startAngle: piLength * 2, endAngle: CGFloat.pi / 2 + piLength * 2, clockwise: true)
        l1wheel5.fill()
        let l2wheel5 = UIBezierPath(arcCenter: CGPoint(x: 555 + xMove, y: 225), radius: 25, startAngle: CGFloat.pi + piLength * 2, endAngle: CGFloat.pi * 1.5 + piLength * 2, clockwise: true)
        l2wheel5.fill()
    }
    func drawlines() {
        let line1 = UIBezierPath()
        line1.move(to: CGPoint(x: 125 + xMove, y: 200))
        line1.addLine(to: CGPoint(x: 555 + xMove, y: 200))
        line1.stroke()
        
        let line2 = UIBezierPath()
        line2.move(to: CGPoint(x: 220 + xMove, y: 300))
        line2.addLine(to: CGPoint(x: 460 + xMove, y: 300))
        line2.stroke()
        
        let line3 = UIBezierPath()
        line3.move(to: CGPoint(x: 109 + xMove, y: 245))
        line3.addLine(to: CGPoint(x: 200 + xMove, y: 296))
        line3.stroke()
        
        let line4 = UIBezierPath()
        line4.move(to: CGPoint(x: 571 + xMove, y: 245))
        line4.addLine(to: CGPoint(x: 480 + xMove, y: 296))
        line4.stroke()
    }
    func drawShapeSix() {
        #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1).setFill()
         let line111 = UIBezierPath()
         line111.move(to: CGPoint(x: 85 + xMove, y: 185))
         line111.addLine(to: CGPoint(x: 595 + xMove, y: 185))
         line111.addLine(to: CGPoint(x: 595 + xMove, y: 245))
         line111.addLine(to: CGPoint(x: 560 + xMove, y: 270))
         line111.addLine(to: CGPoint(x: 120 + xMove, y: 270))
         line111.addLine(to: CGPoint(x: 85 + xMove, y: 245))
         line111.close()
         line111.stroke()
         line111.fill()
         
    }
    func drawEngine() {
        #colorLiteral(red: 0.7208145261, green: 0.886048913, blue: 0.5924729109, alpha: 1).setFill()
        let engineBottom = UIBezierPath()
        engineBottom.move(to: CGPoint(x: 170 + xMove, y: 185))
        engineBottom.addLine(to: CGPoint(x: 170 + xMove, y: 135))
        engineBottom.addLine(to: CGPoint(x: 400 + xMove, y: 135))
        engineBottom.addLine(to: CGPoint(x: 400 + xMove, y: 185))
        engineBottom.close()
        engineBottom.stroke()
        engineBottom.fill()
        
        let engineTop = UIBezierPath()
        engineTop.move(to: CGPoint(x: 220 + xMove, y: 135))
        engineTop.addLine(to: CGPoint(x: 220 + xMove, y: 85))
        engineTop.addLine(to: CGPoint(x: 340 + xMove, y: 85))
        engineTop.addLine(to: CGPoint(x: 340 + xMove, y: 135))
        engineTop.close()
        engineTop.stroke()
        engineTop.fill()
        
        let engineCannon = UIBezierPath()
        engineCannon.move(to: CGPoint(x: 340 + xMove, y: 100))
        engineCannon.addLine(to: CGPoint(x: 580 + xMove, y: 100))
        engineCannon.addLine(to: CGPoint(x: 580 + xMove, y: 120))
        engineCannon.addLine(to: CGPoint(x: 340 + xMove, y: 120))
        engineCannon.close()
        engineCannon.stroke()
        engineCannon.fill()
    }
    func drawLight() {
        #colorLiteral(red: 0.9760972799, green: 1, blue: 0, alpha: 1).setFill()
        let light = UIBezierPath()
        light.move(to: CGPoint(x: 550 + xMove, y: 185))
        light.addLine(to: CGPoint(x: 550 + xMove, y: 175))
        light.addLine(to: CGPoint(x: 590 + xMove, y: 175))
        light.addLine(to: CGPoint(x: 590 + xMove, y: 185))
        light.close()
        light.stroke()
        light.fill()
    }
}

/*
 
 circle
 
 2πradians = 360 degrees
 radius = 1/2 diameter
 
  a^b = b^a
 
 N: 1, 2, 3, 4, 5, 6, 7, 8, 9
 Z: 1, 2, 3, 4, 5, 6, 7, 8, 9, (0), (-1)
 Q: rational, 3.6, 6.355355355..., 6.12991991991...
 6.355355355... = 6 + 355/999
 612.991991991... = 612 + 991/999
 R: π = 3...., 0.7879381647363043625..., √2: 45, 45, 90, √3
 C: 73i
 1. 1, 2, 4, 8, 16, 32, 64, 128, 256, ..., 65536, 131072, 26|2144, 52|4288, 104|8576(2^20)
 
 */
