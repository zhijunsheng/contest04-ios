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
//
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (timer) in
            print("\(self.boardView.deltaX)")

            self.boardView.deltaX = self.boardView.deltaX - 1

            self.boardView.setNeedsDisplay()
            
            if self.boardView.deltaX == -700 {
                self.boardView.deltaX = 700
            }
        }
    }

    @IBAction func move(_ sender: UISlider) {
        print("\(sender.value)")

        boardView.deltaX = CGFloat(sender.value)
        boardView.setNeedsDisplay()
    }
    
}
