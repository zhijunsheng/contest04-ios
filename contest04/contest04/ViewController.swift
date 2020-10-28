//
//  ViewController.swift
//  contest04
//
//  Created by Peter Shi on 2020-10-12.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tankView: TankView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (_) in
            if self.tankView.delta < self.tankView.bounds.width - self.tankView.offset {
                self.tankView.delta += 1
            } else {
                self.tankView.delta = 0
            }
            self.tankView.setNeedsDisplay()
        }
    }
}
