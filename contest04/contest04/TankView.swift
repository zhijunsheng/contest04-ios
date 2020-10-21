import UIKit

class TankView: UIView {
    var dtaX: CGFloat = -200
    
    
   
    override func draw(_ rect: CGRect) {
        // Drawing code
        drwtnkBoard()
    }

    
    
    func drwtnkBoard() {
        #colorLiteral(red: 0.6666666667, green: 0.4751212597, blue: 0.2586010993, alpha: 0.5).setFill()
        let welMark1 = UIBezierPath()
        welMark1.addArc(withCenter: CGPoint(x: 264 + dtaX, y: 414), radius: 50, startAngle: (dtaX + 200) / 50, endAngle: 0.5 * CGFloat.pi + (dtaX + 200) / 50, clockwise: true)
        welMark1.fill()
        
        let welMark2 = UIBezierPath()
        welMark2.addArc(withCenter: CGPoint(x: 464 + dtaX, y: 414), radius: 50, startAngle: (dtaX + 200) / 50, endAngle: 0.5 * CGFloat.pi + (dtaX + 200) / 50, clockwise: true)
        welMark2.fill()
        
        let welMark3 = UIBezierPath()
        welMark3.addArc(withCenter: CGPoint(x: 339 + dtaX, y: 439), radius: 25, startAngle: (dtaX + 200) / 25, endAngle: 0.5 * CGFloat.pi + (dtaX + 200) / 25, clockwise: true)
        welMark3.fill()
        
        let welMark4 = UIBezierPath()
        welMark4.addArc(withCenter: CGPoint(x: 389 + dtaX, y: 439), radius: 25, startAngle: (dtaX + 200) / 25, endAngle: 0.5 * CGFloat.pi + (dtaX + 200) / 25, clockwise: true)
        welMark4.fill()
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5).setStroke()
        let tnkTrack = UIBezierPath()
        tnkTrack.addArc(withCenter: CGPoint(x: 264 + dtaX, y: 414), radius: 50, startAngle: 1 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: false)
        tnkTrack.addLine(to: CGPoint(x: 464 + dtaX, y: 464))
        tnkTrack.addArc(withCenter: CGPoint(x: 464 + dtaX, y: 414), radius: 50, startAngle: 0.5 * CGFloat.pi, endAngle: 0, clockwise: false)
        tnkTrack.stroke()
        
        
        
        let tnkLid = UIBezierPath()
        
        tnkLid.move(to: CGPoint(x: 539 + dtaX, y: 414))
        tnkLid.addLine(to: CGPoint(x: 189 + dtaX, y: 414))
        
        tnkLid.addArc(withCenter: CGPoint(x: 239 + dtaX, y: 414), radius: 50, startAngle: 1 * CGFloat.pi, endAngle: 1.5 * CGFloat.pi, clockwise: true)
        tnkLid.addArc(withCenter: CGPoint(x: 489 + dtaX, y: 414), radius: 50, startAngle: 1.5 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 1, green: 0.9969701477, blue: 0, alpha: 1).setFill()
        tnkLid.fill()
        tnkLid.stroke()
        
        let tnkWheel = UIBezierPath()
        tnkWheel.addArc(withCenter: CGPoint(x: 264 + dtaX, y: 414), radius: 50, startAngle: 0, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        tnkWheel.addArc(withCenter: CGPoint(x: 339 + dtaX, y: 439), radius: 25, startAngle: 0.5 * CGFloat.pi, endAngle: 2.5 * CGFloat.pi, clockwise: true)
        tnkWheel.addArc(withCenter: CGPoint(x: 389 + dtaX, y: 439), radius: 25, startAngle: 0.5 * CGFloat.pi, endAngle: 2.5 * CGFloat.pi, clockwise: true)
        tnkWheel.addArc(withCenter: CGPoint(x: 464 + dtaX, y: 414), radius: 50, startAngle: 0.5 * CGFloat.pi, endAngle: CGFloat.pi, clockwise: true)
        tnkWheel.stroke()
        
        let tnkMark = UIBezierPath(rect: CGRect(x: 189 + dtaX, y: 339, width: 25, height: 50))
        #colorLiteral(red: 1, green: 1, blue: 0, alpha: 1).setFill()
        tnkMark.fill()
        tnkMark.stroke()
        
        let tnkNeck = UIBezierPath(rect: CGRect(x: 239 + dtaX, y: 339, width: 150, height: 25))
        #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1).setFill()
        tnkNeck.fill()
        tnkNeck.stroke()
        
        let tnkHead = UIBezierPath(rect: CGRect(x: 226.5 + dtaX, y: 289, width: 175, height: 50))
        #colorLiteral(red: 1, green: 0.9969701477, blue: 0, alpha: 1).setFill()
        tnkHead.fill()
        tnkHead.stroke()
        
        let tnkHair = UIBezierPath()
        tnkHair.move(to: CGPoint(x: 239 + dtaX, y: 289))
        tnkHair.addLine(to: CGPoint(x: 251.5 + dtaX, y: 264))
        tnkHair.addLine(to: CGPoint(x: 376.5 + dtaX, y: 264))
        tnkHair.addLine(to: CGPoint(x: 389 + dtaX, y: 289))
        #colorLiteral(red: 1, green: 0.9969701477, blue: 0, alpha: 1).setFill()
        tnkHair.fill()
        tnkHair.stroke()
        
        let tnkcnoPiece = UIBezierPath(rect: CGRect(x: 401.5 + dtaX, y: 289, width: 25, height: 37.5))
        #colorLiteral(red: 1, green: 0.9969701477, blue: 0, alpha: 1).setFill()
        tnkcnoPiece.fill()
        tnkcnoPiece.stroke()
        
        let tnkCannon = UIBezierPath(rect: CGRect(x: 426.5 + dtaX, y: 295.25, width: 150, height: 18.75))
        #colorLiteral(red: 1, green: 0.9969701477, blue: 0, alpha: 1).setFill()
        tnkCannon.fill()
        tnkCannon.stroke()
        
    }

}
