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
        // Do any additional setup after loading the view.
    }


    @IBAction func slide(_ sender: UISlider) {
        print(sender.value)
        canvasView.deltaX = CGFloat(sender.value)
        canvasView.setNeedsDisplay()
        
    }
    @IBAction func shooting(_ sender: UIButton) {
        
    }
}

