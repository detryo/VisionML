import UIKit
import AVFoundation
import CoreML
import Vision

class CameraViewController: UIViewController {
    
    @IBOutlet var cameraView: UIView!
    @IBOutlet var tempImageView: UIImageView!
    
    @IBOutlet var captureButton: UIButton!
    @IBOutlet var retakeButton: UIButton!
    
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func takePhoto() {
        
    }
    
    @IBAction func retake() {
        
    }
}
