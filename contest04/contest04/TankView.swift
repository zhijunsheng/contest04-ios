import UIKit

class TankView: UIView {

   
    override func draw(_ rect: CGRect) {
        // Drawing code
        drwtnkBoard()
    }
    
    func drwtnkBoard() {
        let tnkTrack = UIBezierPath()
        tnkTrack.addArc(withCenter: CGPoint(x: 264, y: 414), radius: 50, startAngle: 1 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: false)
        tnkTrack.addLine(to: CGPoint(x: 464, y: 464))
        tnkTrack.addArc(withCenter: CGPoint(x: 464, y: 414), radius: 50, startAngle: 0.5 * CGFloat.pi, endAngle: 0, clockwise: false)
        
        tnkTrack.move(to: CGPoint(x: 539, y: 414))
        tnkTrack.addLine(to: CGPoint(x: 189, y: 414))
        
        tnkTrack.addArc(withCenter: CGPoint(x: 239, y: 414), radius: 50, startAngle: 1 * CGFloat.pi, endAngle: 1.5 * CGFloat.pi, clockwise: true)
        tnkTrack.addArc(withCenter: CGPoint(x: 489, y: 414), radius: 50, startAngle: 1.5 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        tnkTrack.stroke()
        
        let tnkWheel = UIBezierPath()
        tnkWheel.addArc(withCenter: CGPoint(x: 264, y: 414), radius: 50, startAngle: 0, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        tnkWheel.addArc(withCenter: CGPoint(x: 339, y: 439), radius: 25, startAngle: 0.5 * CGFloat.pi, endAngle: 2.5 * CGFloat.pi, clockwise: true)
        tnkWheel.addArc(withCenter: CGPoint(x: 389, y: 439), radius: 25, startAngle: 0.5 * CGFloat.pi, endAngle: 2.5 * CGFloat.pi, clockwise: true)
        tnkWheel.addArc(withCenter: CGPoint(x: 464, y: 414), radius: 50, startAngle: 0.5 * CGFloat.pi, endAngle: CGFloat.pi, clockwise: true)
        tnkWheel.stroke()
        
        let tnkMark = UIBezierPath(rect: CGRect(x: 189, y: 339, width: 25, height: 50))
        tnkMark.stroke()
        
        let tnkNeck = UIBezierPath(rect: CGRect(x: 239, y: 339, width: 150, height: 25))
        tnkNeck.stroke()
        
        let tnkHead = UIBezierPath(rect: CGRect(x: 226.5, y: 289, width: 175, height: 50))
        tnkHead.stroke()
        
        let tnkHair = UIBezierPath()
        tnkHair.move(to: CGPoint(x: 239, y: 289))
        tnkHair.addLine(to: CGPoint(x: 251.5, y: 264))
        tnkHair.addLine(to: CGPoint(x: 376.5, y: 264))
        tnkHair.addLine(to: CGPoint(x: 389, y: 289))
        tnkHair.stroke()
        
        let tnkcnoPiece = UIBezierPath(rect: CGRect(x: 401.5, y: 289, width: 25, height: 37.5))
        tnkcnoPiece.stroke()
        
        let tnkCannon = UIBezierPath(rect: CGRect(x: 426.5, y: 295.25, width: 150, height: 18.75))
        tnkCannon.stroke()
        
        
    }

}
