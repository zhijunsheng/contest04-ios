import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tankView: TankView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval: 0.02, repeats: false) { (t) in
            self.tankView.deltaX = self.tankView.deltaX - 1
            print("\(self.tankView.deltaX)")
            
            if self.tankView.deltaX == -650 {
                self.tankView.deltaX = 650
            }
            
            self.tankView.setNeedsDisplay()
        }
    }
    
    @IBAction func slide(_ sender: UISlider) {
        tankView.deltaX = CGFloat(sender.value)
        
        tankView.setNeedsDisplay()
    }
}
