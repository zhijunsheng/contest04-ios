import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var tankView: TankView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
            self.tankView.xMove += 1
            if self.tankView.xMove >= 650 {
                self.tankView.xMove = -600
            }
            
            self.tankView.piLength += 0.02
            if self.tankView.piLength >= 13 {
                self.tankView.piLength = -600
            }
            
            self.tankView.setNeedsDisplay()
        }
        
    }
    @IBAction func tankMoveSlider(_ sender: UISlider) {
        tankView.xMove = CGFloat(sender.value)
        tankView.piLength = CGFloat(sender.value / 50)
        tankView.setNeedsDisplay()
    }
    @IBAction func boom(_ sender: Any) {
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (t) in
            self.tankView.boomMove += 50
            if self.tankView.boomMove >= 475 {
                t.invalidate()
                self.tankView.boomMove = 0
            }
            self.tankView.setNeedsDisplay()
        }
    }
}
