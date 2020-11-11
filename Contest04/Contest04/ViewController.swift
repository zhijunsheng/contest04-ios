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
        
        Timer.scheduledTimer(withTimeInterval: 0.009, repeats: true) { (_) in
            if self.boardView.centreXDelta > 630 {
                self.boardView.centreXDelta = -500
                self.boardView.centreXDelta = self.boardView.centreXDelta + 1
            } else {
               self.boardView.centreXDelta = self.boardView.centreXDelta + 1
            }
            print("\(self.boardView.centreXDelta)")
            self.boardView.setNeedsDisplay()
        }
    }

    @IBAction func move(_ sender: UISlider) {
        boardView.centreXDelta = CGFloat(sender.value)
        boardView.setNeedsDisplay()
    }
    
    

}

