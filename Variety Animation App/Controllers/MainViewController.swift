//
//  ViewController.swift
//  Variety Animation App
//
//  Created by Alik Nigay on 24.11.2021.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet weak var springView: SpringView!
    
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var buttonLabel: SpringButton!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }
    
    @IBAction func springButtonPressed(_ sender: SpringButton) {
        animationLabel.text = animation.description
        
        springView.animation = animation.present
        springView.curve = animation.curve
        springView.force = CGFloat(animation.force)
        springView.duration = CGFloat(animation.duration)
        springView.delay = CGFloat(animation.delay)
        springView.animate()
        
        animation = Animation.getAnimation()
        buttonLabel.setTitle("Run \(animation.present)", for: .normal)
    }
}

