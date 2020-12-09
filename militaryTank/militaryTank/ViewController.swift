//
//  ViewController.swift
//  militaryTank
//
//  Created by Elaine on 2020-10-13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (clock) in
            self.canvasView.deltaX += 1
            self.canvasView.setNeedsDisplay()
            if self.canvasView.deltaX >= 670 {
                self.canvasView.deltaX = -370
            }
        }
    }
    
    @IBAction func slide(_ sender: UISlider) {
        print(sender.value)
        canvasView.deltaX = CGFloat(sender.value)
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func shooting(_ sender: UIButton) {
        canvasView.showBullet = true
        canvasView.bulletX = canvasView.deltaX - 30
        
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (clock) in
            self.canvasView.bulletX += 5
            self.canvasView.setNeedsDisplay()
            if self.canvasView.bulletX >= 200{
                self.canvasView.showBullet = false
                print(self.canvasView.deltaX)
                self.canvasView.bulletX += 1
                clock.invalidate()
            }
        }
    }
}
