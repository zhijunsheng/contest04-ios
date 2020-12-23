import UIKit

class TankView: UIView {
    var dtatnkX: CGFloat = -200
    var dtabltX: CGFloat = 10
    let rso: CGFloat = 1
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        drwBullet()
        drwtnkBoard()
    }

    func drwBullet() {
        
        
        let blt: UIImage? = UIImage(named: "bulletboom")
        blt?.draw(in: CGRect(x: 512.5 * rso + dtabltX + dtatnkX, y: 295.25 * rso, width: 50 * rso, height: 18.75 * rso))
    }
    
    func drwtnkBoard() {
        #colorLiteral(red: 0.6666666667, green: 0.4751212597, blue: 0.2586010993, alpha: 1).setFill()
        let welMark1 = UIBezierPath()
        welMark1.addArc(withCenter: CGPoint(x: 264 * rso + dtatnkX, y: 414 * rso), radius: 50 * rso, startAngle: (dtatnkX + 200) / 50, endAngle: 0.5 * CGFloat.pi + (dtatnkX + 200) / 50, clockwise: true)
        welMark1.fill()
        
        let welMark2 = UIBezierPath()
        welMark2.addArc(withCenter: CGPoint(x: 464 * rso + dtatnkX, y: 414 * rso), radius: 50 * rso, startAngle: (dtatnkX + 200) / 50, endAngle: 0.5 * CGFloat.pi + (dtatnkX + 200) / 50, clockwise: true)
        welMark2.fill()
        
        let welMark3 = UIBezierPath()
        welMark3.addArc(withCenter: CGPoint(x: 339 * rso + dtatnkX, y: 439 * rso), radius: 25 * rso, startAngle: (dtatnkX + 200) / 25, endAngle: 0.5 * CGFloat.pi + (dtatnkX + 200) / 25, clockwise: true)
        welMark3.fill()
        
        let welMark4 = UIBezierPath()
        welMark4.addArc(withCenter: CGPoint(x: 389 * rso + dtatnkX, y: 439 * rso), radius: 25 * rso, startAngle: (dtatnkX + 200) / 25, endAngle: 0.5 * CGFloat.pi + (dtatnkX + 200) / 25, clockwise: true)
        welMark4.fill()
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5).setStroke()
        let tnkTrack = UIBezierPath()
        tnkTrack.addArc(withCenter: CGPoint(x: 264 * rso + dtatnkX, y: 414 * rso), radius: 50 * rso, startAngle: 1 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: false)
        tnkTrack.addLine(to: CGPoint(x: 464 * rso + dtatnkX, y: 464 * rso))
        tnkTrack.addArc(withCenter: CGPoint(x: 464 * rso + dtatnkX, y: 414 * rso), radius: 50 * rso, startAngle: 0.5 * CGFloat.pi, endAngle: 0, clockwise: false)
        
        
        #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 0.5).setFill()
        tnkTrack.fill()
        tnkTrack.lineWidth = 5
        tnkTrack.stroke()
        
        
        
        let tnkLid = UIBezierPath()
        
        tnkLid.move(to: CGPoint(x: 539 * rso + dtatnkX, y: 414 * rso))
        tnkLid.addLine(to: CGPoint(x: 189 * rso + dtatnkX, y: 414 * rso))
        
        tnkLid.addArc(withCenter: CGPoint(x: 239 * rso + dtatnkX, y: 414 * rso), radius: 50 * rso, startAngle: 1 * CGFloat.pi, endAngle: 1.5 * CGFloat.pi, clockwise: true)
        tnkLid.addArc(withCenter: CGPoint(x: 489 * rso + dtatnkX, y: 414 * rso), radius: 50 * rso, startAngle: 1.5 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 1, green: 0.9969701477, blue: 0, alpha: 1).setFill()
        tnkLid.fill()
        tnkLid.stroke()
        
        let tnkWheel = UIBezierPath()
        tnkWheel.addArc(withCenter: CGPoint(x: 264 * rso + dtatnkX, y: 414 * rso), radius: 50 * rso, startAngle: 0, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        tnkWheel.addArc(withCenter: CGPoint(x: 339 * rso + dtatnkX, y: 439 * rso), radius: 25 * rso, startAngle: 0.5 * CGFloat.pi, endAngle: 2.5 * CGFloat.pi, clockwise: true)
        tnkWheel.addArc(withCenter: CGPoint(x: 389 * rso + dtatnkX, y: 439 * rso), radius: 25 * rso, startAngle: 0.5 * CGFloat.pi, endAngle: 2.5 * CGFloat.pi, clockwise: true)
        tnkWheel.addArc(withCenter: CGPoint(x: 464 * rso + dtatnkX, y: 414 * rso), radius: 50 * rso, startAngle: 0.5 * CGFloat.pi, endAngle: CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0).setFill()
        tnkWheel.fill()
        tnkWheel.lineWidth = 5
        tnkWheel.stroke()
        
        let tnkMark = UIBezierPath(rect: CGRect(x: 189 * rso + dtatnkX, y: 339 * rso, width: 25 * rso, height: 50 * rso))
        #colorLiteral(red: 1, green: 1, blue: 0, alpha: 1).setFill()
        tnkMark.fill()
        tnkMark.stroke()
        
        let tnkNeck = UIBezierPath(rect: CGRect(x: 239 * rso + dtatnkX, y: 339 * rso, width: 150 * rso, height: 25 * rso))
        #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1).setFill()
        tnkNeck.fill()
        tnkNeck.stroke()
        
        let tnkHead = UIBezierPath(rect: CGRect(x: 226.5 * rso + dtatnkX, y: 289 * rso, width: 175 * rso, height: 50 * rso))
        #colorLiteral(red: 1, green: 0.9969701477, blue: 0, alpha: 1).setFill()
        tnkHead.fill()
        tnkHead.stroke()
        
        let tnkHair = UIBezierPath()
        tnkHair.move(to: CGPoint(x: 239 * rso + dtatnkX, y: 289 * rso))
        tnkHair.addLine(to: CGPoint(x: 251.5 * rso + dtatnkX, y: 264 * rso))
        tnkHair.addLine(to: CGPoint(x: 376.5 * rso + dtatnkX, y: 264 * rso))
        tnkHair.addLine(to: CGPoint(x: 389 * rso + dtatnkX, y: 289 * rso))
        #colorLiteral(red: 1, green: 0.9969701477, blue: 0, alpha: 1).setFill()
        tnkHair.fill()
        tnkHair.stroke()
        
        let tnkcnoPiece = UIBezierPath(rect: CGRect(x: 401.5 * rso + dtatnkX, y: 289 * rso, width: 25 * rso, height: 37.5 * rso))
        #colorLiteral(red: 1, green: 0.9969701477, blue: 0, alpha: 1).setFill()
        tnkcnoPiece.fill()
        tnkcnoPiece.stroke()
        
        let tnkCannon = UIBezierPath(rect: CGRect(x: 426.5 * rso + dtatnkX, y: 295.25 * rso, width: 150 * rso, height: 18.75 * rso))
        #colorLiteral(red: 1, green: 0.9969701477, blue: 0, alpha: 1).setFill()
        tnkCannon.fill()
        tnkCannon.stroke()
        
    }

}
