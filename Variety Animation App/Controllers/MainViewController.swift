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
    
    private let animations = AnimationModel.getAnimation()
    private var count = 0
    private var isFirtsStart = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
                initialSetup(animations[count])
    }
    
    @IBAction func springButtonPressed(_ sender: SpringButton) {
        let animation = animations[count]
        buttonLabel.setTitle("Run \(animations[updateCount()].present)", for: .normal)
        springView.animation = animation.present
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        springView.animate()
        updateCount()
        initialSetup(animation)
    }
    
    private func initialSetup(_ animation: AnimationModel) {
        presentLabel.text = "Present: \(animation.present)"
        curveLabel.text = "Curve: \(animation.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", animation.delay))"
    }
    
    private func updateCount() -> Int {
        if count < animations.count {
            count += 1
        } else {
            count = 0
        }
        return count
    }
    
}

