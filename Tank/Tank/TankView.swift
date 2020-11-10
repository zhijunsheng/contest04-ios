//
//  TankView.swift
//  Tank
//
//  Created by Corey Gao on 2020-11-09.
//  Copyright © 2020 Corey Gao. All rights reserved.
//

import UIKit

class TankView: UIView {


    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {

        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 200, y: 500))
        pencil.addLine(to: CGPoint(x: 180, y: 400))
        pencil.addLine(to: CGPoint(x: 250, y: 350))
        pencil.addLine(to: CGPoint(x: 450, y: 350))
        pencil.addLine(to: CGPoint(x: 480, y: 425))
        pencil.close()
        pencil.move(to: CGPoint(x: 370, y: 350))
        pencil.addLine(to: CGPoint(x: 370, y: 455))
        pencil.stroke()
    }
}
