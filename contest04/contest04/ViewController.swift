import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tankView: TankView!
    var timer: Timer?
 //   var bomb: UIImage
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    @IBAction func boom(_ sender: UIButton) {
        Timer.scheduledTimer(withTimeInterval: 1/30, repeats: true) { (t) in
            self.tankView.dtabltX += 5/3
            self.tankView.setNeedsDisplay()
            if self.tankView.dtabltX >= 625 {
                self.tankView.dtabltX = 10
                t.invalidate()
            }
        }
    }
    
    @IBAction func stop(_ sender: UIButton) {
        timer?.invalidate()
        timer = nil
    }
    
    @IBAction func go(_ sender: UIButton) {
        timer?.invalidate()
        timer = nil
        timer = Timer.scheduledTimer(withTimeInterval: 1/30, repeats: true) { (_) in
            self.tankView.dtatnkX += 1
            self.tankView.setNeedsDisplay()
        }
    }
    
    @IBAction func move(_ sender: UISlider) {
        timer?.invalidate()
        timer = nil
        tankView.dtatnkX = CGFloat(sender.value) - 200
        tankView.setNeedsDisplay()
    }
}

/*
 
 N: 1, 65, 234568
 Z: -234567899, -1, 0, 1, 2, 3, 4, 5...,
 Q: 6, 220, 33.4, 38939.38503, 1/7
 R: π, √5, e = 2.718281828...
 C: i,
 
 2π radians = 360 degrees
 radius ~ radian?
 2π(...) = 2π(...)
 
 */
