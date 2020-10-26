import UIKit

class TankView: UIView {

    let deltaX: CGFloat = 200
    
    override func draw(_ rect: CGRect) {
// wheel
        for i in 0..<7 {
            let pen = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * CGFloat(i) + deltaX, y: 500), radius: 30, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            
            pen.stroke()
        }
        
// track
        let pen = UIBezierPath(arcCenter: CGPoint(x: 160 + deltaX, y: 500), radius: 35, startAngle: 0.5 * CGFloat.pi, endAngle: 1.5 * CGFloat.pi, clockwise: true)
        
        pen.stroke()
        
        let pen1 = UIBezierPath()
        pen1.move(to: CGPoint(x: 160 + deltaX, y: 465))
        pen1.addLine(to: CGPoint(x: 600 + deltaX, y: 465))
        
        pen1.stroke()
        
        let pen2 = UIBezierPath(arcCenter: CGPoint(x: 600 + deltaX, y: 500), radius: 35, startAngle: 1.5 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        
        pen2.stroke()
        
        let pen3 = UIBezierPath()
        pen3.move(to: CGPoint(x: 160 + deltaX, y: 535))
        pen3.addLine(to: CGPoint(x: 600 + deltaX, y: 535))
        
        pen3.stroke()
        
// body
        
        let pen4 = UIBezierPath()
        pen4.move(to: CGPoint(x: 250 + deltaX, y: 465))
        pen4.addLine(to: CGPoint(x: 250 + deltaX, y: 300))
        pen4.addLine(to: CGPoint(x: 500 + deltaX, y: 300))
        pen4.addLine(to: CGPoint(x: 500 + deltaX, y: 465))
        
        pen4.stroke()
        
//cannon
        
        let pen5 = UIBezierPath()
        pen5.move(to: CGPoint(x: 250 + deltaX, y: 400))
        pen5.addLine(to: CGPoint(x: 100 + deltaX, y: 400))
        pen5.addLine(to: CGPoint(x: 100 + deltaX, y: 350))
        pen5.addLine(to: CGPoint(x: 250 + deltaX, y: 350))
        
        pen5.stroke()
    }
}
