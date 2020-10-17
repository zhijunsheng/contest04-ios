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
        // Do any additional setup after loading the view.
    }

    @IBAction func goLeft(_ sender: Any) {
        tankView.tankX = tankView.tankX - 25
        tankView.setNeedsDisplay()
    }
    
    @IBAction func goRight(_ sender: Any) {
        tankView.tankX = tankView.tankX + 25
        tankView.setNeedsDisplay()
    }
    
}

