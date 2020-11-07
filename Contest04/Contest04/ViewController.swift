//
//  ViewController.swift
//  Contest04
//
//  Created by Lambert Lin on 2020/10/12.
//  Copyright © 2020 Lambert Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var counter = 0
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats:true) { (_) in
            print("abcd")
            counter = counter + 1
            if counter == 1205 {
                counter = -800
                return
            }
            print(counter)
            self.canvasView.move = CGFloat(counter)
            self.canvasView.setNeedsDisplay()
        }
        
    }


}

/*
 
 N: 1, 2
 Z: 1, 2, 10, 0, - 1, -2,
 Q: 0.1, 0.2, 2/3, 1, 2, 10, 0.333333...
    
 R: |, π, e, √2, √3, √1,
 C: ?
 
 √25 = 5, 5 * 5 = 25
 √4 = 2, (√4)^2 = 4
 √16 = 4
 √8 = ?
 √8 = √(4 * 2) = √4 * √2 = 2√2,
 2√2 * 2√2 = 4 * √2 * √2 = 8
 
 √12 = √(4 * 3) = √4 * √3 = 2√3, 2√3
 
 
 
 
 */
