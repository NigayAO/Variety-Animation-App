//
//  AnimationModel.swift
//  Variety Animation App
//
//  Created by Alik Nigay on 24.11.2021.
//

import Spring

struct AnimationModel {
    let present: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getAnimation() -> AnimationModel {
        let animations = Spring.AnimationPreset.allCases
        let curves = Spring.AnimationCurve.allCases
        let force = CGFloat.random(in: 1...2)
        let duration = CGFloat.random(in: 1...2)
        let delay = CGFloat.random(in: 0.1...0.3)
        let animaion = AnimationModel(present: animations.randomElement()?.rawValue ?? "",
                                      curve: curves.randomElement()?.rawValue ?? "",
                                      force: force,
                                      duration: duration,
                                      delay: delay)
        return animaion
    }
}
