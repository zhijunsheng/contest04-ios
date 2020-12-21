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
        
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats:true) { (_) in
            
            if self.canvasView.move >= 1400 {
                self.canvasView.move = -1000
            }
            self.canvasView.move += 3.1415926535
            self.canvasView.setNeedsDisplay()
        }
    }
}
