//
//  ViewController.swift
//  contest4
//
//  Created by Grace Huang on 10/18/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tankMovementSlider(_ sender: UISlider) {
        boardView.movement = CGFloat(sender.value)
        boardView.setNeedsDisplay()
    }
    
}

