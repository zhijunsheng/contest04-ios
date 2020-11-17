//
//  TankView.swift
//  Tank
//
//  Created by Corey Gao on 2020-11-16.
//  Copyright © 2020 Corey Gao. All rights reserved.
//

import UIKit

class TankView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
      
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 300, y: 500))
        pencil.addLine(to: CGPoint(x: 280, y: 400))
        pencil.addLine(to: CGPoint(x: 380, y: 360))
       
        #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
        pencil.lineWidth = 3
        pencil.stroke()
        
    
    
    }
   

}
