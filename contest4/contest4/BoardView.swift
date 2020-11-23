//
//  BoardView.swift
//  contest4
//
//  Created by Grace Huang on 10/18/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class BoardView: UIView {
    var movement: CGFloat = -300
    var rocketMovement: CGFloat = -300
    var size: CGFloat = 0.95
    let tankBodyWidth: CGFloat = 150
    let tankBodyHeight: CGFloat = 75
    let wheelHeight: CGFloat = 40
    let wheelWidth: CGFloat = 200
    let wheelRadius: CGFloat = 20
    override func draw(_ rect: CGRect) {
        if rocketMovement > bounds.width - 50 {
            rocketMovement = movement
        }
        if movement > bounds.width - 50 {
            movement = -300
            rocketMovement = -300
            rocket(rocketMovement: rocketMovement)
            tank(movement: movement)
            wheel(movement: movement)
            return
        }
        rocket(rocketMovement: rocketMovement)
        tank(movement: movement)
        wheelSpikes(change: movement * 2)
        eraser()
        wheel(movement: movement)
    }
    
    
    func rocket(rocketMovement: CGFloat) {
        let rocket = UIBezierPath(roundedRect: CGRect(x: (50 + wheelWidth / 2 - tankBodyWidth / 2 + rocketMovement) * size, y: (bounds.height - wheelHeight - tankBodyHeight + tankBodyHeight / 2 - 8) * size, width: tankBodyWidth / 4 * size, height: 16 * size), cornerRadius: 3 * size)
        #colorLiteral(red: 0.1037014052, green: 0.04392455518, blue: 0.04877308756, alpha: 1).setFill()
        rocket.fill()
        rocket.lineWidth = 2
        rocket.stroke()
    }
    func tank(movement: CGFloat) {
        
        let gun = UIBezierPath(roundedRect: CGRect(x: (35 + wheelRadius + tankBodyWidth + movement) * size, y: (bounds.height - wheelHeight - tankBodyHeight + tankBodyHeight / 2 - 8) * size, width: (tankBodyWidth / 2) * size, height: 16 * size), cornerRadius: 3 * size)
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setFill()
        gun.fill()
        gun.lineWidth = 2
        gun.stroke()
        
        let cap = UIBezierPath(roundedRect: CGRect(x: (50 + wheelWidth / 2 - (tankBodyWidth - 40) / 2 + movement) * size, y: (bounds.height - wheelHeight - tankBodyHeight - 10) * size, width: (tankBodyWidth - 40) * size, height: 10 * size), cornerRadius: 3)
        cap.fill()
        cap.lineWidth = 2
        cap.stroke()
        // 50 + wheelWidth / 2 - bodyWidth / 2
        let body = UIBezierPath(roundedRect: CGRect(x: (50 + wheelWidth / 2 - tankBodyWidth / 2 + movement) * size, y: (bounds.height - wheelHeight - tankBodyHeight) * size, width: tankBodyWidth * size, height: tankBodyHeight * size), cornerRadius: 20 * size)
        body.lineWidth = 2
        body.fill()
        body.stroke()
    }

    func wheel(movement: CGFloat) {
        let rotation = movement / 25
        let spacing: Int = 32
        for i in 0..<spacing {
            
            if i % 3 == 0 {
                //didnt do multspikes
                let multSpikes = (2 * CGFloat.pi / CGFloat(spacing)) * CGFloat(i)
                let leftWheelSpike = UIBezierPath(arcCenter: CGPoint(x: (50 + movement + wheelRadius) * size, y: (bounds.height - wheelRadius) * size), radius: 26 * size, startAngle: 0 + rotation + multSpikes, endAngle: 2 * CGFloat.pi / CGFloat(spacing) + rotation + multSpikes, clockwise: true)
                leftWheelSpike.addLine(to: CGPoint(x: (50 + movement + wheelRadius) * size, y: (bounds.height - wheelRadius) * size))
                leftWheelSpike.close()
                #colorLiteral(red: 0.1037014052, green: 0.04392455518, blue: 0.04877308756, alpha: 1).setFill()
                leftWheelSpike.fill()
                
                let eraseWheel = UIBezierPath(roundedRect: CGRect(x: (50 + movement) * size, y: (bounds.height - wheelHeight) * size, width: wheelWidth * size, height: wheelHeight * size), cornerRadius: wheelRadius * size)
                #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
                eraseWheel.fill()
                
                let rightWheelSpikeX = 50 + movement + wheelRadius + wheelRadius * 8
                let rightWheelSpike = UIBezierPath(arcCenter: CGPoint(x: rightWheelSpikeX * size, y: (bounds.height - wheelRadius) * size), radius: 26 * size, startAngle: 0 + rotation + multSpikes, endAngle: 2 * CGFloat.pi / CGFloat(spacing) + rotation + multSpikes, clockwise: true)
                rightWheelSpike.addLine(to: CGPoint(x: rightWheelSpikeX * size, y: (bounds.height - wheelRadius) * size))
                rightWheelSpike.close()
                #colorLiteral(red: 0.1037014052, green: 0.04392455518, blue: 0.04877308756, alpha: 1).setFill()
                rightWheelSpike.fill()
                
                let eraseWheel2 = UIBezierPath(arcCenter: CGPoint(x: rightWheelSpikeX * size, y: (bounds.height - wheelRadius) * size), radius: 20 * size, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
                #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
                eraseWheel2.fill()
                eraseWheel2.stroke()
                
                let eraseBox = UIBezierPath(rect: CGRect(x: (rightWheelSpikeX - 40) * size, y: (bounds.height - wheelRadius - 20) * size, width: 40 * size, height: 40 * size))
                eraseBox.fill()
            }
            
        }
        
        let wheelBody = UIBezierPath(roundedRect: CGRect(x: (50 + movement) * size, y: (bounds.height - wheelHeight) * size, width: wheelWidth * size, height: wheelHeight * size), cornerRadius: wheelRadius * size)
        wheelBody.lineWidth = 2
        wheelBody.stroke()
        for i in 0..<5 {
            wheelCircle(x: (50 + movement + wheelRadius + wheelRadius * CGFloat(i * 2)) * size, y: (bounds.height - wheelRadius) * size)
        }
        
    }
    
    func wheelCircle(x: CGFloat, y: CGFloat) {
        let dotNumber: Int = 8
        
        let circle = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: 20 * size, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setFill()
        circle.fill()
        
        for i in 0..<dotNumber {
            let angleBreakupSection: CGFloat = (2 * CGFloat.pi / CGFloat(dotNumber)) * CGFloat(i)
            let angle: CGFloat = (movement / 100 * CGFloat.pi) + angleBreakupSection
            
            let offsetX: CGFloat = 13 * sin(angle) * size
            let offsetY: CGFloat = 13 * cos(angle) * size
            let movingCircle2 = UIBezierPath(arcCenter: CGPoint(x: x - offsetX, y: y + offsetY), radius: 3 * size, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            #colorLiteral(red: 0.1037014052, green: 0.04392455518, blue: 0.04877308756, alpha: 1).setFill()
            movingCircle2.fill()
        }
    }
    
    func wheelSpikes(change: CGFloat) {
        let spikeNumber: Int = Int(bounds.width * 5)
        let difference: CGFloat = (wheelWidth / 2 - tankBodyWidth / 2)
        
        
        for i in 0..<spikeNumber {
            let spike = UIBezierPath(rect: CGRect(x: (CGFloat(-1000) + difference + change + 20 * CGFloat(i)) * size, y: (bounds.height - wheelHeight - 6) * size, width: 4 * size, height: 6 * size))
            
            let bottemSpikes = UIBezierPath(rect: CGRect(x: (CGFloat(-1000) + difference + 20 * CGFloat(i)) * size, y: bounds.height * size, width: 4 * size, height: 6 * size))
            
            #colorLiteral(red: 0.1037014052, green: 0.04392455518, blue: 0.04877308756, alpha: 1).setFill()
            spike.fill()
            bottemSpikes.fill()
        }
    }
    
    func eraser() {
        let marker = (60 + wheelRadius + tankBodyWidth + movement - 3) * size
        let leftBlock = UIBezierPath(rect: CGRect(x: 0, y: (bounds.height - wheelHeight - 100) * size, width: (50 + wheelWidth / 2 - tankBodyWidth / 2 + movement) * size, height: 300 * size))
        
        //100 * size    30 * size
        let rightBlock = UIBezierPath(rect: CGRect(x: marker, y: (bounds.height - wheelHeight - tankBodyHeight + tankBodyHeight / 2 + 9) * size, width: (bounds.width - marker), height: 300 * size))
        
        #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
        rightBlock.fill()
        leftBlock.fill()
    }
}

/*
 N: 1,2,3,4,5,6
 Z: 1,2,3,4,5,6,-1,-2,0
 Q: 1,2,3,4,5,6,-1,-2,0,sqrt(4),5/2,0.6666...
 R: π, sqrt(2),√40, e
 C: i, √(-4)
*/
