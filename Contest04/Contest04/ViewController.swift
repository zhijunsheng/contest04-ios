//
//  ViewController.swift
//  Contest04
//
//  Created by Angie Yan on 2020-10-22.
//  Copyright © 2020 Angie Yan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func move(_ sender: UISlider) {
        boardView.centreXDelta = CGFloat(sender.value)
        boardView.setNeedsDisplay()
    }
    

}

