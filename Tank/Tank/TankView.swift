//
//  TankView.swift
//  Tank
//
//  Created by Felix Lo on 2020/10/12.
//  Copyright © 2020 Felix Lo. All rights reserved.
//

import UIKit

class TankView: UIView {
    override func draw(_ rect: CGRect) {
        drawBody()
    }
    
    func drawBody() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150, y: 300))
        path.addLine(to: CGPoint(x: 700, y: 250))
        path.stroke()
    }
    
}
