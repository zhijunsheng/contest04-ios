//
//  ViewController.swift
//  Contest4
//
//  Created by Andy Yan on 2020-10-13.
//  Copyright © 2020 Andy Yan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boardView: BoardView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func move(_ sender: UISlider) {
        print("\(sender.value)")
        
        boardView.deltaX = CGFloat(sender.value)
        boardView.setNeedsDisplay()
    }
    
}

