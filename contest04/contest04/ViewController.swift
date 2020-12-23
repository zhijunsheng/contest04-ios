import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var tankView: TankView!
    var timer1: Timer?
    var timer2: Timer?
    var soundPlayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // could you accept the call?
        // yes
        // in wechat please
        // no bettery
        // before class: 49 battery...
        
        let boom = Bundle.main.path(forResource: "pick_release", ofType: "wav")
        let url = URL(fileURLWithPath: boom!)
        self.soundPlayer = try? AVAudioPlayer(contentsOf: url)
        
    }
    
    @IBAction func boom(_ sender: UIButton) {
        timer2?.invalidate()
        timer2 = nil
        self.soundPlayer.play()
        timer2 = Timer.scheduledTimer(withTimeInterval: 1/30, repeats: true) { (t) in
            self.tankView.dtabltX += 80/3
            self.tankView.setNeedsDisplay()
            if self.tankView.dtabltX >= 625 {
                self.tankView.dtabltX = 10
                t.invalidate()
            }
        }
    }
    
    @IBAction func stop(_ sender: UIButton) {
        timer1?.invalidate()
        timer1 = nil
    }
    
    @IBAction func go(_ sender: UIButton) {
        timer1?.invalidate()
        timer1 = nil
        timer1 = Timer.scheduledTimer(withTimeInterval: 1/30, repeats: true) { (_) in
            self.tankView.dtatnkX += 5
            self.tankView.setNeedsDisplay()
            if self.tankView.dtatnkX >= 528 {
                self.tankView.dtatnkX = -600
            }
            
        }
    }
    
    @IBAction func move(_ sender: UISlider) {
        timer1?.invalidate()
        timer1 = nil
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
