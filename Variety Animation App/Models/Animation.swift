//
//  AnimationModel.swift
//  Variety Animation App
//
//  Created by Alik Nigay on 24.11.2021.
//
struct Animation {
    let present: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        Present: \(present)
        Curve: \(curve)
        Force: \(String(format: "%.2f", force))
        Duration: \(String(format: "%.2f", duration))
        Delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        let dataManager = DataManager.shared
        
        let animations = dataManager.allAnimations
        let curves = dataManager.allCurves
        let force = Double.random(in: 1...2)
        let duration = Double.random(in: 1...2)
        let delay = Double.random(in: 0.1...0.3)
        
        let animaion = Animation(present: animations.randomElement()?.rawValue ?? "",
                                 curve: curves.randomElement()?.rawValue ?? "",
                                 force: force,
                                 duration: duration,
                                 delay: delay)
        return animaion
    }
}
