//
//  DataManager.swift
//  Variety Animation App
//
//  Created by Alik Nigay on 25.11.2021.
//

import Spring
class DataManager {
    static let shared = DataManager()
    
    let allAnimations = Spring.AnimationPreset.allCases
    let allCurves = Spring.AnimationCurve.allCases
    
    private init() {}
}
