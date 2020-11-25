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
            
        }
    }
    
    @IBAction func slide(_ sender: UISlider) {
        print(sender.value)
        canvasView.deltaX = CGFloat(sender.value)
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func shooting(_ sender: UIButton) {
        print("idk")
    }
    
}
