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
        tnkTrack.stroke()
    }

}
