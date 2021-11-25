//
//  AnimationModel.swift
//  Variety Animation App
//
//  Created by Alik Nigay on 24.11.2021.
//
struct Animation {
    let present: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var descriptionPresent: String {
        "Present: \(present)"
    }
    var descriptionCurve: String {
        "Curve: \(curve)"
    }
    var descriptionForce: String {
        "Force: \(String(format: "%.2f", force))"
    }
    var descriptionDuration: String {
        "Duration: \(String(format: "%.2f", duration))"
    }
    var descriptionDelay: String {
        "Delay: \(String(format: "%.2f", delay))"
    }
    
    static func getAnimation() -> Animation {
        let dataManager = DataManager.shared
        
        let animations = dataManager.allAnimations
        let curves = dataManager.allCurves
        let force = Float.random(in: 1...2)
        let duration = Float.random(in: 1...2)
        let delay = Float.random(in: 0.1...0.3)
        
        let animaion = Animation(present: animations.randomElement()?.rawValue ?? "",
                                 curve: curves.randomElement()?.rawValue ?? "",
                                 force: force,
                                 duration: duration,
                                 delay: delay)
        return animaion
    }
}
