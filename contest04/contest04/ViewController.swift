import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tankView: TankView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func slide(_ sender: UISlider) {
        print("\(sender.value)")
        tankView.deltaX = CGFloat(sender.value)
        
        tankView.setNeedsDisplay()
    }
}
