//
//  BoardView.swift
//  tank
//
//  Created by Halwong on 2020/10/18.
//

import UIKit

class BoardView: UIView {

    override func draw(_ rect: CGRect) {
        let a = UIBezierPath(arcCenter: CGPoint(x: 300, y: 300), radius: 50, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        a.stroke()
    }
    
    
}
