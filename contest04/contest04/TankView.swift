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
    
    func drawTriangle(x1: CGFloat,
                      y1: CGFloat,
                      x2: CGFloat,
                      y2: CGFloat,
                      x3: CGFloat,
                      y3: CGFloat,
                      fC: UIColor,
                      sC: UIColor) {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: x1 + deltaX, y: y1))
        pen.addLine(to: CGPoint(x: x2 + deltaX, y: y2))
        pen.addLine(to: CGPoint(x: x3 + deltaX, y: y3))
        pen.close()
        
        fC.setFill()
        pen.fill()
        sC.setStroke()
        pen.stroke()
    }
    
    func drawStripe() {
        // Body
        
        drawTriangle(x1: 250, y1: 460, x2: 360, y2: 460, x3: 250, y3: 420, fC: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0.3893139983), sC: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 0.3980896832))
        drawTriangle(x1: 300, y1: 400, x2: 360, y2: 400, x3: 360, y3: 350, fC: #colorLiteral(red: 0.4654583335, green: 0.7647280097, blue: 0.2666989267, alpha: 0.7306292808), sC: #colorLiteral(red: 0.5220226645, green: 0.3259948492, blue: 0.9203113914, alpha: 0.2671767979))
        drawTriangle(x1: 250, y1: 340, x2: 400, y2: 340, x3: 430, y3: 200, fC: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 0.4065175514), sC: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 0.5607609161))
        drawTriangle(x1: 270, y1: 400, x2: 270, y2: 340, x3: 400, y3: 350, fC: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 0.1834332192), sC: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 0.6329730308))
        drawTriangle(x1: 400, y1: 400, x2: 350, y2: 340, x3: 390, y3: 350, fC: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.9039223031), sC: #colorLiteral(red: 0.131905973, green: 0.01214264333, blue: 0.4664137363, alpha: 0.23))
        drawTriangle(x1: 470, y1: 460, x2: 390, y2: 450, x3: 350, y3: 360, fC: #colorLiteral(red: 1, green: 0, blue: 0, alpha: 0.3278842038), sC: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 0.3321382705))
        drawTriangle(x1: 400, y1: 390, x2: 460, y2: 460, x3: 490, y3: 300, fC: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3056774401), sC: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6800620719))
        drawTriangle(x1: 500, y1: 400, x2: 470, y2: 310, x3: 410, y3: 360, fC: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.7151380565), sC: #colorLiteral(red: 0, green: 0.633900106, blue: 0, alpha: 0.03421982021))
        drawTriangle(x1: 340, y1: 400, x2: 460, y2: 320, x3: 400, y3: 360, fC: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 0.9016748716), sC: #colorLiteral(red: 1, green: 0.4335109293, blue: 1, alpha: 0.5))
        drawTriangle(x1: 300, y1: 400, x2: 360, y2: 440, x3: 420, y3: 380, fC: #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 0.5), sC: #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 0.5))
        drawTriangle(x1: 250, y1: 300, x2: 400, y2: 400, x3: 250, y3: 460, fC: #colorLiteral(red: 0.8321695924, green: 0.985483706, blue: 0.4733308554, alpha: 0.1969178082), sC: #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 0.616598887))
        drawTriangle(x1: 250, y1: 300, x2: 400, y2: 400, x3: 500, y3: 300, fC: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1932791096), sC: #colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 0.5))
        drawTriangle(x1: 500, y1: 300, x2: 400, y2: 400, x3: 500, y3: 460, fC: #colorLiteral(red: 0, green: 0.9239678383, blue: 0.9888846278, alpha: 0.2966609589), sC: #colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 0.334572988))
        drawTriangle(x1: 250, y1: 460, x2: 400, y2: 400, x3: 500, y3: 460, fC: #colorLiteral(red: 1, green: 0.05195199698, blue: 0.9346833825, alpha: 0.4152129709), sC: #colorLiteral(red: 0.9899528623, green: 0.8887283206, blue: 0.9466698766, alpha: 0.347254923))
        
        // Cannon
        
        drawTriangle(x1: 250, y1: 400, x2: 100, y2: 400, x3: 250, y3: 350, fC: #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 0.5), sC: #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 0.7149775257))
        drawTriangle(x1: 250, y1: 350, x2: 100, y2: 350, x3: 100, y3: 400, fC: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 0.5), sC: #colorLiteral(red: 0.3084011078, green: 0.5618229508, blue: 0, alpha: 0.5))
        drawTriangle(x1: 120, y1: 375, x2: 200, y2: 290, x3: 200, y3: 450, fC: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2927011986), sC: #colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 0.5))
        drawTriangle(x1: 50, y1: 375, x2: 250, y2: 300, x3: 250, y3: 450, fC: #colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 0.5), sC: #colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 0.5))
        
        //Tail
        
        drawTriangle(x1: 500, y1: 380, x2: 600, y2: 310, x3: 600, y3: 450, fC: #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 0.5), sC: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 0.4967626284))
        drawTriangle(x1: 520, y1: 380, x2: 590, y2: 330, x3: 590, y3: 430, fC: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.5), sC: #colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 0.509765625))
        drawTriangle(x1: 540, y1: 380, x2: 580, y2: 350, x3: 580, y3: 410, fC: #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 0.5), sC: #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 0.5))
        drawTriangle(x1: 560, y1: 380, x2: 570, y2: 370, x3: 570, y3: 390, fC: #colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 0.5093642979), sC: #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 0.5))
        
        //Wheel
        
        drawTriangle(x1: 500, y1: 360, x2: 400, y2: 530, x3: 600, y3: 530, fC: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.35), sC: #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 0.5051102312))
        drawTriangle(x1: 300, y1: 360, x2: 200, y2: 530, x3: 400, y3: 530, fC: #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 0.3534086045), sC: #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 0.5))
        drawTriangle(x1: 150, y1: 400, x2: 500, y2: 530, x3: 300, y3: 530, fC: #colorLiteral(red: 1, green: 0.5212053061, blue: 1, alpha: 0.3547463613), sC: #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 0.5))
    }
    
    func drawBody() {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 250 + deltaX, y: 460))
        pen.addLine(to: CGPoint(x: 250 + deltaX, y: 300))
        pen.addLine(to: CGPoint(x: 500 + deltaX, y: 300))
        pen.addLine(to: CGPoint(x: 500 + deltaX, y: 460))
        
        pen.stroke()
    }
    
    func drawCannon() {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 250 + deltaX, y: 400))
        pen.addLine(to: CGPoint(x: 100 + deltaX, y: 400))
        pen.addLine(to: CGPoint(x: 100 + deltaX, y: 350))
        pen.addLine(to: CGPoint(x: 250 + deltaX, y: 350))
        
        pen.stroke()
    }
    
    func drawWheel() {
        for i in 0..<7 {
            let pen = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * CGFloat(i) + deltaX, y: 500), radius: 30, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            
            pen.stroke()
        }
    }
    
    func drawSector(wheelIndex: Int,
                    startAngle: CGFloat,
                    endAngle: CGFloat,
                    fillColor: UIColor,
                    strokeColor: UIColor) {
        let pen = UIBezierPath(arcCenter: CGPoint(x: 170 + 70 * CGFloat(wheelIndex) + deltaX, y: 500), radius: 30, startAngle: startAngle * CGFloat.pi + deltaX / 30, endAngle: endAngle * CGFloat.pi + deltaX / 30, clockwise: true)
        pen.addLine(to: CGPoint(x: 170 + 70 * CGFloat(wheelIndex) + deltaX, y: 500))
        pen.close()
        
        fillColor.setFill()
        pen.fill()
        strokeColor.setStroke()
        pen.stroke()
    }
 
    func drawSectors() {
        drawSector(wheelIndex: 0, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 0.5), strokeColor: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 0.5))
        drawSector(wheelIndex: 0, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 0.5), strokeColor: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 0.5))
        drawSector(wheelIndex: 0, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 0.5), strokeColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 0.5))
        drawSector(wheelIndex: 0, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 0.5), strokeColor: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 0.5))
        
        drawSector(wheelIndex: 1, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 0.5), strokeColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 0.5))
        drawSector(wheelIndex: 1, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.5), strokeColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 0.5))
        drawSector(wheelIndex: 1, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 0.5), strokeColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.4983679366))
        drawSector(wheelIndex: 1, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 0.4938195634), strokeColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 0.4870505137))
        
        drawSector(wheelIndex: 2, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0.5), strokeColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 0.5))
        drawSector(wheelIndex: 2, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 0.504494863), strokeColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 0.4993043664))
        drawSector(wheelIndex: 2, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 0.4862478596), strokeColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4957459332))
        drawSector(wheelIndex: 2, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 0.5), strokeColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 0.5))
        
        drawSector(wheelIndex: 3, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 0.5014180223), strokeColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.4929098887))
        drawSector(wheelIndex: 3, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 0.4974315068), strokeColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 0.4960402397))
        drawSector(wheelIndex: 3, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0.5), strokeColor: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 0.4909567637))
        drawSector(wheelIndex: 3, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 0.4852044092), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4835188356))
        
        drawSector(wheelIndex: 4, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 0.5), strokeColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 0.5))
        drawSector(wheelIndex: 4, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 0.5), strokeColor: #colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 0.4986622432))
        drawSector(wheelIndex: 4, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 0.4920537243), strokeColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.5021939212))
        drawSector(wheelIndex: 4, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 0.4951840753), strokeColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 0.507999786))
        
        drawSector(wheelIndex: 5, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 0.5079462757), strokeColor: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 0.4965753425))
        drawSector(wheelIndex: 5, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 0.5061536815), strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5103274829))
        drawSector(wheelIndex: 5, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.5122806079), strokeColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 0.5022474315))
        drawSector(wheelIndex: 5, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 0.4764287243), strokeColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0.5102204623))
        
        drawSector(wheelIndex: 6, startAngle: 0.5, endAngle: 1, fillColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 0.4779805223), strokeColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.4983411815))
        drawSector(wheelIndex: 6, startAngle: 1.5, endAngle: 2, fillColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 0.4888163527), strokeColor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 0.4914651113))
        drawSector(wheelIndex: 6, startAngle: 0, endAngle: 0.5, fillColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 0.4944081764), strokeColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 0.4989297945))
        drawSector(wheelIndex: 6, startAngle: 1, endAngle: 1.5, fillColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0.49), strokeColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 0.4979933647))
    }
    
    func drawTrack() {
        let pen1 = UIBezierPath()
        pen1.move(to: CGPoint(x: 170 + deltaX, y: 470))
        pen1.addLine(to: CGPoint(x: 590 + deltaX, y: 470))

        pen1.stroke()
        
        let pen2 = UIBezierPath()
        pen2.move(to: CGPoint(x: 170 + deltaX, y: 530))
        pen2.addLine(to: CGPoint(x: 590 + deltaX, y: 530))

        pen2.stroke()
    }
}
