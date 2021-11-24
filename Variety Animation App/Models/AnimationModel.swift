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
    
    static func getAnimation() -> [AnimationModel] {
        var allInOne:[AnimationModel] = []
        
        let animations = Spring.AnimationPreset.allCases
        let curves = Spring.AnimationCurve.allCases
        let force = CGFloat.random(in: 1...2)
        let duration = CGFloat.random(in: 1...2)
        let delay = CGFloat.random(in: 0.1...0.3)
        
        let minimum = min(animations.count, curves.count)
        
        for index in 0..<minimum {
            let animaion = AnimationModel(present: animations.shuffled()[index].rawValue,
                                          curve: curves.shuffled()[index].rawValue,
                                          force: force,
                                          duration: duration,
                                          delay: delay)
            allInOne.append(animaion)
        }
        return allInOne
    }
}
