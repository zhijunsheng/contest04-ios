import UIKit

class TankView: UIView {

    var deltaX: CGFloat = 0
    
    override func draw(_ rect: CGRect) {
        drawWheel()
        drawTrack()
        drawBody()
        drawCannon()
        drawSectors()
        drawStripe()
    }
    
    func drawStripe() {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 250 + deltaX, y: 460))
        pen.addLine(to: CGPoint(x: 360 + deltaX, y: 460))
        pen.addLine(to: CGPoint(x: 250 + deltaX, y: 420))
        pen.close()
        
        #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setFill()
        pen.fill()
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setStroke()
        pen.stroke()
        
        let pen2 = UIBezierPath()
        pen2.move(to: CGPoint(x: 300 + deltaX, y: 400))
        pen2.addLine(to: CGPoint(x: 360 + deltaX, y: 400))
        pen2.addLine(to: CGPoint(x: 360 + deltaX, y: 350))
        pen2.close()
        
        #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        pen2.fill()
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setStroke()
        pen2.stroke()
        
        let pen3 = UIBezierPath()
        pen3.move(to: CGPoint(x: 250 + deltaX, y: 340))
        pen3.addLine(to: CGPoint(x: 400 + deltaX, y: 340))
        pen3.addLine(to: CGPoint(x: 430 + deltaX, y: 200))
        pen3.close()
        
        #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1).setFill()
        pen3.fill()
        #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).setStroke()
        pen3.stroke()
        
        let pen4 = UIBezierPath()
        pen4.move(to: CGPoint(x: 270 + deltaX, y: 400))
        pen4.addLine(to: CGPoint(x: 270 + deltaX, y: 380))
        pen4.addLine(to: CGPoint(x: 300 + deltaX, y: 350))
        pen4.close()
        
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setFill()
        pen4.fill()
        #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).setStroke()
        pen4.stroke()
        
        let pen5 = UIBezierPath()
        pen5.move(to: CGPoint(x: 400 + deltaX, y: 400))
        pen5.addLine(to: CGPoint(x: 350 + deltaX, y: 340))
        pen5.addLine(to: CGPoint(x: 390 + deltaX, y: 350))
        pen5.close()
        
        #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1).setFill()
        pen5.fill()
        #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1).setStroke()
        pen5.stroke()
        
        let pen6 = UIBezierPath()
        pen6.move(to: CGPoint(x: 470 + deltaX, y: 460))
        pen6.addLine(to: CGPoint(x: 390 + deltaX, y: 450))
        pen6.addLine(to: CGPoint(x: 350 + deltaX, y: 360))
        pen6.close()
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
        pen6.fill()
        #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setStroke()
        pen6.stroke()
        
        let pen7 = UIBezierPath()
        pen7.move(to: CGPoint(x: 400 + deltaX, y: 390))
        pen7.addLine(to: CGPoint(x: 460 + deltaX, y: 460))
        pen7.addLine(to: CGPoint(x: 490 + deltaX, y: 400))
        pen7.close()
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        pen7.fill()
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setStroke()
        pen7.stroke()
        
        let pen8 = UIBezierPath()
        pen8.move(to: CGPoint(x: 500 + deltaX, y: 400))
        pen8.addLine(to: CGPoint(x: 470 + deltaX, y: 310))
        pen8.addLine(to: CGPoint(x: 410 + deltaX, y: 360))
        pen8.close()
        
        #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1).setFill()
        pen8.fill()
        #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1).setStroke()
        pen8.stroke()
        
        let pen9 = UIBezierPath()
        pen9.move(to: CGPoint(x: 430 + deltaX, y: 400))
        pen9.addLine(to: CGPoint(x: 460 + deltaX, y: 380))
        pen9.addLine(to: CGPoint(x: 400 + deltaX, y: 360))
        pen9.close()
        
        #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1).setFill()
        pen9.fill()
        #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1).setStroke()
        pen9.stroke()
        
        let pen10 = UIBezierPath()
        pen10.move(to: CGPoint(x: 300 + deltaX, y: 400))
        pen10.addLine(to: CGPoint(x: 360 + deltaX, y: 440))
        pen10.addLine(to: CGPoint(x: 420 + deltaX, y: 380))
        pen10.close()
        
        #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 0.5).setFill()
        pen10.fill()
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setStroke()
        pen10.stroke()
    }
    
    
    func drawWheel() {
        for i in 0..<7 {
            let pen = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * CGFloat(i) + deltaX, y: 500), radius: 30, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            
            pen.stroke()
        }
    }
    
    func drawSector(wheelIndex: Int, startAngle: CGFloat, endAngle: CGFloat, fillColor: UIColor, strokeColor: UIColor) {
        let pen = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * CGFloat(wheelIndex) + deltaX, y: 500), radius: 30, startAngle: startAngle * CGFloat.pi + deltaX / 30, endAngle: endAngle * CGFloat.pi + deltaX / 30, clockwise: true)
        pen.addLine(to: CGPoint(x: 170 + 70 * CGFloat(wheelIndex) + deltaX, y: 500))
        pen.close()
        
        fillColor.setFill()
        pen.fill()
        strokeColor.setStroke()
        pen.stroke()
    }
 
    func drawSectors() {
        drawSector(wheelIndex: 0, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), strokeColor: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        drawSector(wheelIndex: 0, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), strokeColor: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        drawSector(wheelIndex: 0, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), strokeColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        drawSector(wheelIndex: 0, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), strokeColor: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        
        drawSector(wheelIndex: 1, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), strokeColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        drawSector(wheelIndex: 1, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), strokeColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        drawSector(wheelIndex: 1, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1), strokeColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
        drawSector(wheelIndex: 1, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), strokeColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        
        drawSector(wheelIndex: 2, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), strokeColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        drawSector(wheelIndex: 2, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), strokeColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        drawSector(wheelIndex: 2, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), strokeColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        drawSector(wheelIndex: 2, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), strokeColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        
        drawSector(wheelIndex: 3, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), strokeColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        drawSector(wheelIndex: 3, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), strokeColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        drawSector(wheelIndex: 3, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), strokeColor: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))
        drawSector(wheelIndex: 3, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        
        drawSector(wheelIndex: 4, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), strokeColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        drawSector(wheelIndex: 4, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), strokeColor: #colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 1))
        drawSector(wheelIndex: 4, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), strokeColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        drawSector(wheelIndex: 4, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), strokeColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        
        drawSector(wheelIndex: 5, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), strokeColor: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
        drawSector(wheelIndex: 5, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 1), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        drawSector(wheelIndex: 5, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), strokeColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        drawSector(wheelIndex: 5, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), strokeColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        
        drawSector(wheelIndex: 6, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), strokeColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        drawSector(wheelIndex: 6, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), strokeColor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        drawSector(wheelIndex: 6, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), strokeColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        drawSector(wheelIndex: 6, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), strokeColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
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
