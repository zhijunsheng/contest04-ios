import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tankView: TankView!
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    @IBAction func stop(_ sender: UIButton) {
        timer?.invalidate()
        timer = nil
    }
    
    @IBAction func go(_ sender: UIButton) {
        timer?.invalidate()
        timer = nil
        timer = Timer.scheduledTimer(withTimeInterval: 1/30, repeats: true) { (_) in
            self.tankView.dtaX += 1
            self.tankView.setNeedsDisplay()
        }
    }
    
    @IBAction func move(_ sender: UISlider) {
        timer?.invalidate()
        timer = nil
        tankView.dtaX = CGFloat(sender.value)
        tankView.setNeedsDisplay()
    }
}

/*
 
 N: 1, 65, 234568
 Z: -234567899, -1, 0, 1, 2, 3, 4, 5...,
 Q: 6, 220, 33.4, 38939.38503, 1/7
 R: π, √5, e = 2.718281828...
 C: i,
 
 
 */
