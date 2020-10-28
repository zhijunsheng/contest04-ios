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
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats:false) { (_) in
            print("abcd")
            counter = counter + 1
            if counter == 795 {
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
 */
