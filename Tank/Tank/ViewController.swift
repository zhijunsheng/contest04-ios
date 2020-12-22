//
//  ViewController.swift
//  Tank
//
//  Created by Corey Gao on 2020-11-16.
//  Copyright © 2020 Corey Gao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenView: TankView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (t) in
            self.greenView.deltaX = self.greenView.deltaX + 4
            if self.greenView.deltaX == 480 {
                self.greenView.deltaX = -700
            }
                
            self.greenView.setNeedsDisplay()
            print("\(self.greenView.deltaX)")
        }
    }

    @IBAction func slide(_ sender: UISlider) {
        print("\(sender.value)")
        greenView.deltaX = CGFloat(sender.value)
        greenView.setNeedsDisplay()
    }
}

