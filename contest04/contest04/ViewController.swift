import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tankView: TankView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (t) in
            self.tankView.deltaX = self.tankView.deltaX - 5
            
            self.tankView.setNeedsDisplay()
        }
    }
    
    @IBAction func slide(_ sender: UISlider) {
        tankView.deltaX = CGFloat(sender.value)
        
        tankView.setNeedsDisplay()
    }
}
