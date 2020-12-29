//
//  TankView.swift
//  Tank
//
//  Created by Corey Gao on 2020-11-16.
//  Copyright © 2020 Corey Gao. All rights reserved.
//

import UIKit

class TankView: UIView {
    var deltaX: CGFloat = 0
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        drawBody()
        drawWheels()
 
        
        let arc = UIBezierPath(arcCenter: CGPoint(x: 560 + deltaX, y: 600), radius: 70, startAngle: 1.4 * CGFloat.pi, endAngle: 0.5 * CGFloat.pi, clockwise: true)
        arc.addLine(to: CGPoint(x: 300 + deltaX, y: 665))
        arc.addArc(withCenter: CGPoint(x: 300 + deltaX, y: 615), radius: 50, startAngle: 0.5 * CGFloat.pi, endAngle: 1.4 * CGFloat.pi, clockwise: true)
        arc.close()
        arc.lineWidth = 7
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        arc.stroke()
        
    }
    
    func drawWheels() {
        let circle = UIBezierPath(arcCenter: CGPoint(x: 560 + deltaX, y: 600), radius: 70, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle.lineWidth = 3
        #colorLiteral(red: 0.5678678959, green: 0.6161957578, blue: 0.5416835301, alpha: 1).setFill()
        circle.fill()
        circle.stroke()
        
    let smallcircle = UIBezierPath(arcCenter: CGPoint(x: 560 + deltaX, y: 600), radius: 20, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
           smallcircle.lineWidth = 2
           #colorLiteral(red: 0.4044155082, green: 0.4317721826, blue: 0.3743674444, alpha: 1).setFill()
           smallcircle.fill()
           smallcircle.stroke()
               
        let circlesector = UIBezierPath(arcCenter: CGPoint(x: 560 + deltaX, y: 600), radius: 20, startAngle: 0 * CGFloat.pi + deltaX / 70, endAngle: 0.5 * CGFloat.pi + deltaX / 70, clockwise: true)
        circlesector.addLine(to: CGPoint(x: 560 + deltaX, y: 600))
        circlesector.close()
        circlesector.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circlesector.fill()
        circlesector.stroke()
        
        let circlesector1 = UIBezierPath(arcCenter: CGPoint(x: 560 + deltaX, y: 600), radius: 20, startAngle: 1 * CGFloat.pi + deltaX / 70, endAngle: 1.5 * CGFloat.pi + deltaX / 70, clockwise: true)
        circlesector1.addLine(to: CGPoint(x: 560 + deltaX, y: 600))
        circlesector1.close()
        circlesector1.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circlesector1.fill()
        circlesector1.stroke()
        
        
        //
        let circle1 = UIBezierPath(arcCenter: CGPoint(x: 300 + deltaX, y: 615), radius: 50, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle1.lineWidth = 3
        #colorLiteral(red: 0.5678678959, green: 0.6161957578, blue: 0.5416835301, alpha: 1).setFill()
        circle1.fill()
        circle1.stroke()
        
        let smallcircle1 = UIBezierPath(arcCenter: CGPoint(x: 300 + deltaX, y: 615), radius: 15, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        smallcircle1.lineWidth = 2
        #colorLiteral(red: 0.4044155082, green: 0.4317721826, blue: 0.3743674444, alpha: 1).setFill()
        smallcircle1.fill()
        smallcircle1.stroke()
        

        let circle1sector = UIBezierPath(arcCenter: CGPoint(x: 300 + deltaX, y: 615), radius: 15, startAngle: 0 * CGFloat.pi + deltaX / 50, endAngle: 0.5 * CGFloat.pi + deltaX / 50, clockwise: true)
        circle1sector.addLine(to: CGPoint(x: 300 + deltaX, y: 615))
        circle1sector.close()
        circle1sector.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circle1sector.fill()
        circle1sector.stroke()
               
        let circle1sector1 = UIBezierPath(arcCenter: CGPoint(x: 300 + deltaX, y: 615), radius: 15, startAngle: 1 * CGFloat.pi + deltaX / 50, endAngle: 1.5 * CGFloat.pi + deltaX / 50, clockwise: true)
        circle1sector1.addLine(to: CGPoint(x: 300 + deltaX, y: 615))
        circle1sector1.close()
        circle1sector1.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circle1sector1.fill()
        circle1sector1.stroke()
    
        
        //CIRCLE 2
    
        let circle2 = UIBezierPath(arcCenter: CGPoint(x: 400 + deltaX, y: 573), radius: 20, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle2.lineWidth = 3
        #colorLiteral(red: 0.5678678959, green: 0.6161957578, blue: 0.5416835301, alpha: 1).setFill()
        circle2.fill()
        circle2.stroke()
        
        let smallcircle2 = UIBezierPath(arcCenter: CGPoint(x: 400 + deltaX, y: 573), radius: 5, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        smallcircle2.lineWidth = 2
        #colorLiteral(red: 0.4044155082, green: 0.4317721826, blue: 0.3743674444, alpha: 1).setFill()
        smallcircle2.fill()
        smallcircle2.stroke()
        
   
        //
        
        let circle3 = UIBezierPath(arcCenter: CGPoint(x: 443 + deltaX, y: 570), radius: 23, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle3.lineWidth = 3
        #colorLiteral(red: 0.5678678959, green: 0.6161957578, blue: 0.5416835301, alpha: 1).setFill()
        circle3.fill()
        circle3.stroke()
        
        let smallcircle3 = UIBezierPath(arcCenter: CGPoint(x: 443 + deltaX, y: 570), radius: 7, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        smallcircle3.lineWidth = 2
        #colorLiteral(red: 0.4044155082, green: 0.4317721826, blue: 0.3743674444, alpha: 1).setFill()
        smallcircle3.fill()
        smallcircle3.stroke()
    
        
      
        //
        
        let circle4 = UIBezierPath(arcCenter: CGPoint(x: 386 + deltaX, y: 629), radius: 36, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle4.lineWidth = 3
        #colorLiteral(red: 0.5678678959, green: 0.6161957578, blue: 0.5416835301, alpha: 1).setFill()
        circle4.fill()
        circle4.stroke()
        
        let smallcircle4 = UIBezierPath(arcCenter: CGPoint(x: 386 + deltaX, y: 629), radius: 13, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        smallcircle4.lineWidth = 2
        #colorLiteral(red: 0.4044155082, green: 0.4317721826, blue: 0.3743674444, alpha: 1).setFill()
        smallcircle4.fill()
        smallcircle4.stroke()
        
        let circle4sector = UIBezierPath(arcCenter: CGPoint(x: 386 + deltaX, y: 629), radius: 13, startAngle: 0 * CGFloat.pi + deltaX / 50, endAngle: 0.5 * CGFloat.pi + deltaX / 50, clockwise: true)
        circle4sector.addLine(to: CGPoint(x: 386 + deltaX, y: 629))
        circle4sector.close()
        circle4sector.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circle4sector.fill()
        circle4sector.stroke()
               
        let circle4sector1 = UIBezierPath(arcCenter: CGPoint(x: 386 + deltaX, y: 629), radius: 13, startAngle: 1 * CGFloat.pi + deltaX / 50, endAngle: 1.5 * CGFloat.pi + deltaX / 50, clockwise: true)
        circle4sector1.addLine(to: CGPoint(x: 386 + deltaX, y: 629))
        circle4sector1.close()
        circle4sector1.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circle4sector1.fill()
        circle4sector1.stroke()
        

        //
        
        let circle5 = UIBezierPath(arcCenter: CGPoint(x: 458 + deltaX, y: 629), radius: 36, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle5.lineWidth = 3
        #colorLiteral(red: 0.5678678959, green: 0.6161957578, blue: 0.5416835301, alpha: 1).setFill()
        circle5.fill()
        circle5.stroke()
        
        let smallcircle5 = UIBezierPath(arcCenter: CGPoint(x: 458 + deltaX, y: 629), radius: 13, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
            smallcircle5.lineWidth = 2
            #colorLiteral(red: 0.4044155082, green: 0.4317721826, blue: 0.3743674444, alpha: 1).setFill()
            smallcircle5.fill()
            smallcircle5.stroke()
        
        let circle5sector = UIBezierPath(arcCenter: CGPoint(x: 458 + deltaX, y: 629), radius: 13, startAngle: 0 * CGFloat.pi + deltaX / 50, endAngle: 0.5 * CGFloat.pi + deltaX / 50, clockwise: true)
        circle5sector.addLine(to: CGPoint(x: 458 + deltaX, y: 629))
        circle5sector.close()
        circle5sector.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circle5sector.fill()
        circle5sector.stroke()
               
        let circle5sector1 = UIBezierPath(arcCenter: CGPoint(x: 458 + deltaX, y: 629), radius: 13, startAngle: 1 * CGFloat.pi + deltaX / 50, endAngle: 1.5 * CGFloat.pi + deltaX / 50, clockwise: true)
        circle5sector1.addLine(to: CGPoint(x: 458 + deltaX, y: 629))
        circle5sector1.close()
        circle5sector1.lineWidth = 2
        #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).setFill()
        circle5sector1.fill()
        circle5sector1.stroke()

    }
        
    func drawBody()  {
        
        //Top
        //body
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 340 + deltaX, y: 340))
        pen.addLine(to: CGPoint(x: 360 + deltaX, y: 255))
        pen.addLine(to: CGPoint(x: 510 + deltaX, y: 255))
        pen.addLine(to: CGPoint(x: 530 + deltaX, y: 340))
        pen.close()
        #colorLiteral(red: 0.5245992789, green: 0.6098607513, blue: 0.4749277365, alpha: 1).setFill()
        pen.fill()
        pen.lineWidth = 2
        pen.stroke()
        //shadow
        let pen1 = UIBezierPath()
        pen1.move(to: CGPoint(x: 342 + deltaX, y: 338))
        pen1.addLine(to: CGPoint(x: 362 + deltaX, y: 257))
        pen1.addLine(to: CGPoint(x: 390 + deltaX, y: 257))
        pen1.addLine(to: CGPoint(x: 510 + deltaX, y: 338))
        pen1.close()
        pen1.lineWidth = 2
        #colorLiteral(red: 0.4690749383, green: 0.5407626295, blue: 0.4235934497, alpha: 1).setFill()
        pen1.fill()
        //smallsquare
        let pen2 = UIBezierPath()
        pen2.move(to: CGPoint(x: 435 + deltaX, y: 280))
        pen2.addLine(to: CGPoint(x: 490 + deltaX, y: 280))
        pen2.addLine(to: CGPoint(x: 490 + deltaX, y: 310))
        pen2.addLine(to: CGPoint(x: 435 + deltaX, y: 310))
        pen2.close()
        pen2.lineWidth = 2
        pen2.stroke()
       //tubeConnector
        let pen3 = UIBezierPath()
        pen3.move(to: CGPoint(x: 513 + deltaX, y: 260))
        pen3.addLine(to: CGPoint(x: 528 + deltaX, y: 262))
        pen3.addLine(to: CGPoint(x: 538 + deltaX, y: 330))
        pen3.addLine(to: CGPoint(x: 528 + deltaX, y: 332))
        pen3.close()
        pen3.lineWidth = 2
        #colorLiteral(red: 0.5245992789, green: 0.6098607513, blue: 0.4749277365, alpha: 1).setFill()
        pen3.fill()
        pen3.stroke()
        //tube
        let pen4 = UIBezierPath()
        pen4.move(to: CGPoint(x: 700 + deltaX, y: 282))
        pen4.addLine(to: CGPoint(x: 530 + deltaX, y: 274))
        pen4.addLine(to: CGPoint(x: 538 + deltaX, y: 320))
        pen4.addLine(to: CGPoint(x: 701 + deltaX, y: 310))
        pen4.close()
        #colorLiteral(red: 0.5245992789, green: 0.6098607513, blue: 0.4749277365, alpha: 1).setFill()
        pen4.fill()
        pen4.lineWidth = 2
        pen4.stroke()
        //shadow
        let pen5 = UIBezierPath()
        pen5.move(to: CGPoint(x: 700 + deltaX, y: 305))
        pen5.addLine(to: CGPoint(x: 535 + deltaX, y: 303))
        pen5.addLine(to: CGPoint(x: 538 + deltaX, y: 320))
        pen5.addLine(to: CGPoint(x: 701 + deltaX, y: 310))
        pen5.close()
        #colorLiteral(red: 0.4690749383, green: 0.5407626295, blue: 0.4235934497, alpha: 1).setFill()
        pen5.fill()
        
        
        
        
        
        
        
        
        //middleConnector
        
        let marker = UIBezierPath()
        marker.move(to: CGPoint(x: 380 + deltaX, y: 350))
        marker.addLine(to: CGPoint(x: 380 + deltaX, y: 340))
        marker.addLine(to: CGPoint(x: 510 + deltaX, y: 340))
        marker.addLine(to: CGPoint(x: 510 + deltaX, y: 350))
        marker.close()
        #colorLiteral(red: 0.1519389573, green: 0.1519389573, blue: 0.1519389573, alpha: 1).setFill()
        marker.fill()
        marker.lineWidth = 2
        marker.stroke()
        
        let crayons = UIBezierPath()
        crayons.move(to: CGPoint(x: 260 + deltaX, y: 530))
        crayons.addLine(to: CGPoint(x: 600 + deltaX, y: 450))
        crayons.addLine(to: CGPoint(x: 650 + deltaX, y: 480))
        crayons.addLine(to: CGPoint(x: 650 + deltaX, y: 500))
        crayons.addLine(to: CGPoint(x: 600 + deltaX, y: 470))
        crayons.addLine(to: CGPoint(x: 260 + deltaX, y: 550))
        crayons.addLine(to: CGPoint(x: 240 + deltaX, y: 590))
        crayons.addLine(to: CGPoint(x: 230 + deltaX, y: 570))
        crayons.addLine(to: CGPoint(x: 245 + deltaX, y: 540))
        crayons.close()
        crayons.lineWidth = 2
        #colorLiteral(red: 0.5245992789, green: 0.6098607513, blue: 0.4749277365, alpha: 1).setFill()
        crayons.fill()
        crayons.stroke()
        
        let crayons2 = UIBezierPath()
        
        crayons2.move(to: CGPoint(x: 260 + deltaX, y: 550))
        crayons2.addLine(to: CGPoint(x: 300 + deltaX, y: 615))
        crayons2.addLine(to: CGPoint(x: 560 + deltaX, y: 600))
        crayons2.addLine(to: CGPoint(x: 625 + deltaX, y: 484))
        crayons2.addLine(to: CGPoint(x: 600 + deltaX, y: 470))
        crayons2.close()
        #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).setFill()
        crayons2.fill()
        crayons2.lineWidth = 2
        crayons2.stroke()
        
        
        // Bottom
        let pencil = UIBezierPath()
        let pencil1 = UIBezierPath()
        let pencil2 = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 260 + deltaX, y: 530))
        pencil.addLine(to: CGPoint(x: 230 + deltaX, y: 400))
        pencil.addLine(to: CGPoint(x: 300 + deltaX, y: 350))
        pencil.addLine(to: CGPoint(x: 550 + deltaX, y: 350))
        pencil.addLine(to: CGPoint(x: 600 + deltaX, y: 450))
        pencil.close()
        #colorLiteral(red: 0.5245992789, green: 0.6098607513, blue: 0.4749277365, alpha: 1).setFill()
        pencil.fill()
        pencil.move(to: CGPoint(x: 430 + deltaX, y: 350))
        pencil.addLine(to: CGPoint(x: 430 + deltaX, y: 490))
        //pencil1
        pencil1.move(to: CGPoint(x: 260 + deltaX, y: 530))
        pencil1.addLine(to: CGPoint(x: 230 + deltaX, y: 400))
        pencil1.addLine(to: CGPoint(x: 300 + deltaX, y: 350))
        pencil1.addLine(to: CGPoint(x: 330 + deltaX, y: 350))
        pencil1.addLine(to: CGPoint(x: 430 + deltaX, y: 460))
        pencil1.addLine(to: CGPoint(x: 430 + deltaX, y: 490))
        pencil1.close()
        #colorLiteral(red: 0.4690749383, green: 0.5407626295, blue: 0.4235934497, alpha: 1).setFill()
        pencil1.fill()
        //pencil2
        pencil2.move(to: CGPoint(x: 300 + deltaX, y: 400))
        pencil2.addLine(to: CGPoint(x: 300 + deltaX, y: 440))
        pencil2.addLine(to: CGPoint(x: 400 + deltaX, y: 440))
        pencil2.addLine(to: CGPoint(x: 400 + deltaX, y: 400))
        pencil2.close()
        
        pencil2.move(to: CGPoint(x: 305 + deltaX, y: 410))
        pencil2.addLine(to: CGPoint(x: 305 + deltaX, y: 430))
        pencil2.addLine(to: CGPoint(x: 350 + deltaX, y: 430))
        pencil2.addLine(to: CGPoint(x: 350 + deltaX, y: 410))
        pencil2.addLine(to: CGPoint(x: 305 + deltaX, y: 410))
        
        pencil2.move(to: CGPoint(x: 355 + deltaX, y: 410))
        pencil2.addLine(to: CGPoint(x: 355 + deltaX, y: 430))
        pencil2.addLine(to: CGPoint(x: 395 + deltaX, y: 430))
        pencil2.addLine(to: CGPoint(x: 395 + deltaX, y: 410))
        pencil2.addLine(to: CGPoint(x: 355 + deltaX, y: 410))
        pencil2.lineWidth = 2
        pencil2.stroke()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        pencil.lineWidth = 2
        pencil.stroke()
    }
}


