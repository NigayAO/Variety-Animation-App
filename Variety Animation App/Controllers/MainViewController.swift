//
//  ViewController.swift
//  Variety Animation App
//
//  Created by Alik Nigay on 24.11.2021.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet weak var springView: SpringView!

    @IBOutlet var labels: [UILabel]?    
    @IBOutlet weak var buttonLabel: SpringButton!
    
    private let animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup(animation)
    }
    
    @IBAction func springButtonPressed(_ sender: SpringButton) {
        let newAnimation = Animation.getAnimation()
        buttonLabel.setTitle("Run \(newAnimation.present)", for: .normal)
        springView.animation = newAnimation.present
        springView.curve = newAnimation.curve
        springView.force = CGFloat(newAnimation.force)
        springView.duration = CGFloat(newAnimation.duration)
        springView.delay = CGFloat(newAnimation.delay)
        springView.animate()
        initialSetup(newAnimation)
    }
    
    private func initialSetup(_ animation: Animation) {
        for item in labels! {
            switch item.tag {
            case 0:
                item.text = animation.descriptionPresent
            case 1:
                item.text = animation.descriptionCurve
            case 2:
                item.text = animation.descriptionForce
            case 3:
                item.text = animation.descriptionDuration
            default:
                item.text = animation.descriptionDelay
            }
        }
    }
}

