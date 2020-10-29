//
//  ViewController.swift
//  Tank
//
//  Created by Felix Lo on 2020/10/12.
//  Copyright © 2020 Felix Lo. All rights reserved.
//

import UIKit

/*
 👻 Contest04 👻

 You'll simulate a moving tank.
 Deadline is the end of 2020.
 It is driven by a timer.
 The size of the tank needs to be flexible.
 The track-and-wheels must look and feel "real".
 No image is allowed.
 */

class ViewController: UIViewController {
    @IBOutlet weak var tankView: TankView!
    var timer: Timer? = nil
    var speed: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func speed(_ sender: UISlider) {
        speed = CGFloat(sender.value)
    }
    
    @IBAction func move(_ sender: Any) {
        timer?.invalidate()
        timer = nil
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [self] (_) in
            tankView.tankX -= speed
            tankView.setNeedsDisplay()
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        timer?.invalidate()
        timer = nil
    }
    
    @IBAction func goLeft(_ sender: Any) {
        tankView.tankX -= 100
        tankView.setNeedsDisplay()
    }
    
    @IBAction func goRight(_ sender: Any) {
        tankView.tankX += 100
        tankView.setNeedsDisplay()
    }
}
