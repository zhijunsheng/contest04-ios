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
        
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (_) in
            self.boardView.movement = self.boardView.movement + 8
            self.boardView.setNeedsDisplay()
        }
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (_) in
            self.boardView.rocketMovement = self.boardView.rocketMovement + 50
            self.boardView.setNeedsDisplay()
        }

    }

    @IBAction func tankMovementSlider(_ sender: UISlider) {
        boardView.movement = CGFloat(sender.value)
        boardView.setNeedsDisplay()
    }
    
}

