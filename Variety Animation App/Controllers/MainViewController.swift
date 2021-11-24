//
//  ViewController.swift
//  Variety Animation App
//
//  Created by Alik Nigay on 24.11.2021.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet weak var springView: SpringView!
    
    @IBOutlet weak var presentLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: SpringButton!
    
    private let animation = AnimationModel.getAnimation()
    private var isFirtsStart = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup(animation)
    }
    
    @IBAction func springButtonPressed(_ sender: SpringButton) {
        isFirtsStart = false
        let newAnimation = AnimationModel.getAnimation()
        buttonLabel.setTitle("Run \(newAnimation.present)", for: .normal)
        
        if isFirtsStart {
            springView.animation = animation.present
            springView.curve = animation.curve
            springView.force = animation.force
            springView.duration = animation.duration
            springView.delay = animation.delay
            springView.animate()
        } else {
            initialSetup(newAnimation)
            springView.animation = newAnimation.present
            springView.curve = newAnimation.curve
            springView.force = newAnimation.force
            springView.duration = newAnimation.duration
            springView.delay = newAnimation.delay
            springView.animate()
        }

    }
    
    private func initialSetup(_ animation: AnimationModel) {
        presentLabel.text = "Present: \(animation.present)"
        curveLabel.text = "Curve: \(animation.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", animation.delay))"
    }
    
}

