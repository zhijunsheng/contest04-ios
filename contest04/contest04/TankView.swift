import UIKit

class TankView: UIView {

    var deltaX: CGFloat = 0
    
    override func draw(_ rect: CGRect) {
        drawWheel()
        drawTrack()
        drawBody()
        drawCannon()
        drawSector()
    }
    
    func drawWheel() {
        for i in 0..<7 {
            let pen = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * CGFloat(i) + deltaX, y: 500), radius: 30, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            
            pen.stroke()
        }
    }
    
    func drawSector() {
        let pen = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 0 + deltaX, y: 500), radius: 30, startAngle: 1.5 * CGFloat.pi + deltaX / 30, endAngle: 2 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen.addLine(to: CGPoint(x: 170 + 70 * 0 + deltaX, y: 500))
        pen.close()
        
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setFill()
        pen.fill()
        #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).setStroke()
        pen.stroke()
        
        let pen1 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 0 + deltaX, y: 500), radius: 30, startAngle: 0.5 * CGFloat.pi + deltaX / 30, endAngle: 1 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen1.addLine(to: CGPoint(x: 170 + 70 * 0 + deltaX, y: 500))
        pen1.close()
        
        #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setFill()
        pen1.fill()
        #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).setStroke()
        pen1.stroke()
        
        let pen2 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 0 + deltaX, y: 500), radius: 30, startAngle: 0 * CGFloat.pi + deltaX / 30, endAngle: 0.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen2.addLine(to: CGPoint(x: 170 + 70 * 0 + deltaX, y: 500))
        pen2.close()
        
        #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).setFill()
        pen2.fill()
        #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1).setStroke()
        pen2.stroke()
        
        let pen3 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 0 + deltaX, y: 500), radius: 30, startAngle: 1 * CGFloat.pi + deltaX / 30, endAngle: 1.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen3.addLine(to: CGPoint(x: 170 + 70 * 0 + deltaX, y: 500))
        pen3.close()
        
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setFill()
        pen3.fill()
        #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).setStroke()
        pen3.stroke()
        
        let pen4 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 1 + deltaX, y: 500), radius: 30, startAngle: 1 * CGFloat.pi + deltaX / 30, endAngle: 1.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen4.addLine(to: CGPoint(x: 170 + 70 * 1 + deltaX, y: 500))
        pen4.close()
        
        #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1).setFill()
        pen4.fill()
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        pen4.stroke()
        
        let pen5 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 1 + deltaX, y: 500), radius: 30, startAngle: 1.5 * CGFloat.pi + deltaX / 30, endAngle: 2 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen5.addLine(to: CGPoint(x: 170 + 70 * 1 + deltaX, y: 500))
        pen5.close()
        
        #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1).setFill()
        pen5.fill()
        #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).setStroke()
        pen5.stroke()
        
        let pen6 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 1 + deltaX, y: 500), radius: 30, startAngle: 0 * CGFloat.pi + deltaX / 30, endAngle: 0.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen6.addLine(to: CGPoint(x: 170 + 70 * 1 + deltaX, y: 500))
        pen6.close()
        
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setFill()
        pen6.fill()
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setStroke()
        pen6.stroke()
        
        let pen7 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 1 + deltaX, y: 500), radius: 30, startAngle: 0.5 * CGFloat.pi + deltaX / 30, endAngle: 1 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen7.addLine(to: CGPoint(x: 170 + 70 * 1 + deltaX, y: 500))
        pen7.close()
        
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setFill()
        pen7.fill()
        #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).setStroke()
        pen7.stroke()
        
        let pen8 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 2 + deltaX, y: 500), radius: 30, startAngle: 1 * CGFloat.pi + deltaX / 30, endAngle: 1.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen8.addLine(to: CGPoint(x: 170 + 70 * 2 + deltaX, y: 500))
        pen8.close()
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
        pen8.fill()
        #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1).setStroke()
        pen8.stroke()
        
        let pen9 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 2 + deltaX, y: 500), radius: 30, startAngle: 1.5 * CGFloat.pi + deltaX / 30, endAngle: 2 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen9.addLine(to: CGPoint(x: 170 + 70 * 2 + deltaX, y: 500))
        pen9.close()
        
        #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1).setFill()
        pen9.fill()
        #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).setStroke()
        pen9.stroke()
        
        let pen10 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 2 + deltaX, y: 500), radius: 30, startAngle: 0 * CGFloat.pi + deltaX / 30, endAngle: 0.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen10.addLine(to: CGPoint(x: 170 + 70 * 2 + deltaX, y: 500))
        pen10.close()
        
        #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        pen10.fill()
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setStroke()
        pen10.stroke()
        
        let pen11 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 2 + deltaX, y: 500), radius: 30, startAngle: 0.5 * CGFloat.pi + deltaX / 30, endAngle: 1 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen11.addLine(to: CGPoint(x: 170 + 70 * 2 + deltaX, y: 500))
        pen11.close()
        
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setFill()
        pen11.fill()
        #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1).setStroke()
        pen11.stroke()
        
        let pen12 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 3 + deltaX, y: 500), radius: 30, startAngle: 1 * CGFloat.pi + deltaX / 30, endAngle: 1.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen12.addLine(to: CGPoint(x: 170 + 70 * 3 + deltaX, y: 500))
        pen12.close()
        
        #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1).setFill()
        pen12.fill()
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setStroke()
        pen12.stroke()
        
        let pen13 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 3 + deltaX, y: 500), radius: 30, startAngle: 1.5 * CGFloat.pi + deltaX / 30, endAngle: 2 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen13.addLine(to: CGPoint(x: 170 + 70 * 3 + deltaX, y: 500))
        pen13.close()
        
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setFill()
        pen13.fill()
        #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1).setStroke()
        pen13.stroke()
        
        let pen14 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 3 + deltaX, y: 500), radius: 30, startAngle: 0 * CGFloat.pi + deltaX / 30, endAngle: 0.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen14.addLine(to: CGPoint(x: 170 + 70 * 3 + deltaX, y: 500))
        pen14.close()
        
        #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1).setFill()
        pen14.fill()
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setStroke()
        pen14.stroke()
        
        let pen15 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 3 + deltaX, y: 500), radius: 30, startAngle: 0.5 * CGFloat.pi + deltaX / 30, endAngle: 1 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen15.addLine(to: CGPoint(x: 170 + 70 * 3 + deltaX, y: 500))
        pen15.close()
        
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setFill()
        pen15.fill()
        #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1).setStroke()
        pen15.stroke()
        
        let pen16 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 4 + deltaX, y: 500), radius: 30, startAngle: 1 * CGFloat.pi + deltaX / 30, endAngle: 1.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen16.addLine(to: CGPoint(x: 170 + 70 * 4 + deltaX, y: 500))
        pen16.close()
        
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setFill()
        pen16.fill()
        #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1).setStroke()
        pen16.stroke()
        
        let pen17 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 4 + deltaX, y: 500), radius: 30, startAngle: 1.5 * CGFloat.pi + deltaX / 30, endAngle: 2 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen17.addLine(to: CGPoint(x: 170 + 70 * 4 + deltaX, y: 500))
        pen17.close()
        
        #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1).setFill()
        pen17.fill()
        #colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 1).setStroke()
        pen17.stroke()
        
        let pen18 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 4 + deltaX, y: 500), radius: 30, startAngle: 0 * CGFloat.pi + deltaX / 30, endAngle: 0.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen18.addLine(to: CGPoint(x: 170 + 70 * 4 + deltaX, y: 500))
        pen18.close()
        
        #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1).setFill()
        pen18.fill()
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setStroke()
        pen18.stroke()
        
        let pen19 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 4 + deltaX, y: 500), radius: 30, startAngle: 0.5 * CGFloat.pi + deltaX / 30, endAngle: 1 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen19.addLine(to: CGPoint(x: 170 + 70 * 4 + deltaX, y: 500))
        pen19.close()
        
        #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).setFill()
        pen19.fill()
        #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1).setStroke()
        pen19.stroke()
        
        let pen20 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 5 + deltaX, y: 500), radius: 30, startAngle: 1 * CGFloat.pi + deltaX / 30, endAngle: 1.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen20.addLine(to: CGPoint(x: 170 + 70 * 5 + deltaX, y: 500))
        pen20.close()
        
        #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        pen20.fill()
        #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1).setStroke()
        pen20.stroke()
        
        let pen21 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 5 + deltaX, y: 500), radius: 30, startAngle: 1.5 * CGFloat.pi + deltaX / 30, endAngle: 2 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen21.addLine(to: CGPoint(x: 170 + 70 * 5 + deltaX, y: 500))
        pen21.close()
        
        #colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 1).setFill()
        pen21.fill()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        pen21.stroke()
        
        let pen22 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 5 + deltaX, y: 500), radius: 30, startAngle: 0 * CGFloat.pi + deltaX / 30, endAngle: 0.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen22.addLine(to: CGPoint(x: 170 + 70 * 5 + deltaX, y: 500))
        pen22.close()
        
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setFill()
        pen22.fill()
        #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1).setStroke()
        pen22.stroke()
        
        let pen23 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 5 + deltaX, y: 500), radius: 30, startAngle: 0.5 * CGFloat.pi + deltaX / 30, endAngle: 1 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen23.addLine(to: CGPoint(x: 170 + 70 * 5 + deltaX, y: 500))
        pen23.close()
        
        #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).setFill()
        pen23.fill()
        #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1).setStroke()
        pen23.stroke()
        
        let pen24 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 6 + deltaX, y: 500), radius: 30, startAngle: 1 * CGFloat.pi + deltaX / 30, endAngle: 1.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen24.addLine(to: CGPoint(x: 170 + 70 * 6 + deltaX, y: 500))
        pen24.close()
        
        #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1).setFill()
        pen24.fill()
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setStroke()
        pen24.stroke()
        
        let pen25 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 6 + deltaX, y: 500), radius: 30, startAngle: 1.5 * CGFloat.pi + deltaX / 30, endAngle: 2 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen25.addLine(to: CGPoint(x: 170 + 70 * 6 + deltaX, y: 500))
        pen25.close()
        
        #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1).setFill()
        pen25.fill()
        #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1).setStroke()
        pen25.stroke()
        
        let pen26 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 6 + deltaX, y: 500), radius: 30, startAngle: 0 * CGFloat.pi + deltaX / 30, endAngle: 0.5 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen26.addLine(to: CGPoint(x: 170 + 70 * 6 + deltaX, y: 500))
        pen26.close()
        
        #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1).setFill()
        pen26.fill()
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        pen26.stroke()
        
        let pen27 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 6 + deltaX, y: 500), radius: 30, startAngle: 0.5 * CGFloat.pi + deltaX / 30, endAngle: 1 * CGFloat.pi + deltaX / 30, clockwise: true)
        pen27.addLine(to: CGPoint(x: 170 + 70 * 6 + deltaX, y: 500))
        pen27.close()
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
        pen27.fill()
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setStroke()
        pen27.stroke()
    }
    
    func drawTrack() {
        let pen1 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 0 + deltaX , y: 500), radius: 40, startAngle: 0.5 * CGFloat.pi , endAngle: 1.5 * CGFloat.pi, clockwise: true)

        pen1.stroke()
        
        let pen2 = UIBezierPath()
        pen2.move(to: CGPoint(x: 170 + deltaX, y: 460))
        pen2.addLine(to: CGPoint(x: 590 + deltaX, y: 460))

        pen2.stroke()
        
        let pen3 = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * 6 + deltaX, y: 500), radius: 40, startAngle: 1.5 * CGFloat.pi , endAngle: 0.5 * CGFloat.pi, clockwise: true)

        pen3.stroke()

        let pen4 = UIBezierPath()
        pen4.move(to: CGPoint(x: 170 + deltaX, y: 540))
        pen4.addLine(to: CGPoint(x: 590 + deltaX, y: 540))

        pen4.stroke()
    }
    
    func drawBody() {
        let pen4 = UIBezierPath()
        pen4.move(to: CGPoint(x: 250 + deltaX, y: 460))
        pen4.addLine(to: CGPoint(x: 250 + deltaX, y: 300))
        pen4.addLine(to: CGPoint(x: 500 + deltaX, y: 300))
        pen4.addLine(to: CGPoint(x: 500 + deltaX, y: 460))
        
        pen4.stroke()
    }
    
    func drawCannon() {
        let pen5 = UIBezierPath()
        pen5.move(to: CGPoint(x: 250 + deltaX, y: 400))
        pen5.addLine(to: CGPoint(x: 100 + deltaX, y: 400))
        pen5.addLine(to: CGPoint(x: 100 + deltaX, y: 350))
        pen5.addLine(to: CGPoint(x: 250 + deltaX, y: 350))
        
        pen5.stroke()
    }
    
    
}
