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
        Timer.scheduledTimer(withTimeInterval: 0.11, repeats: true) { (_) in
            print("abcd")
            counter = counter + 5
            print(counter)
            self.canvasView.move = CGFloat(counter)
            self.canvasView.setNeedsDisplay()
        }
        
    }


}

