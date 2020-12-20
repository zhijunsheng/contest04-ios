//
//  ViewController.swift
//  tank
//
//  Created by Halwong on 2020/10/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (timer) in
            self.boardView.delta = self.boardView.delta + 1
            if self.boardView.delta > 600 {
                self.boardView.delta = -650
            }
            self.boardView.setNeedsDisplay()
        }
    }
    
    @IBAction func slider(_ sender: UISlider) {
        print(sender.value)
        boardView.delta = CGFloat(sender.value)
        boardView.setNeedsDisplay()
    }
    
}

