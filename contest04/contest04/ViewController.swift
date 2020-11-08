import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var tankView: TankView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tankMoveSlider(_ sender: UISlider) {
        tankView.xMove = CGFloat(sender.value)
        tankView.piLenth = CGFloat(sender.value / 50)
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
