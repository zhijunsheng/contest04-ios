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
        // Do any additional setup after loading the view.
    }

    @IBAction func slide(_ sender: UISlider) {
    
        print("\(sender.value)")
        greenView.deltaX = CGFloat(sender.value)
        greenView.setNeedsDisplay()
    }
}

