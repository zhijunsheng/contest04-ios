//
//  ViewController.swift
//  Tank
//
//  Created by Felix Lo on 2020/10/12.
//  Copyright © 2020 Felix Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tankView: TankView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [self] (_) in
            tankView.tankX -= 2
            tankView.setNeedsDisplay()
        }
    }

    @IBAction func goLeft(_ sender: Any) {
        tankView.tankX -= 25
        tankView.setNeedsDisplay()
    }
    
    @IBAction func goRight(_ sender: Any) {
        tankView.tankX += 25
        tankView.setNeedsDisplay()
    }
    
}
