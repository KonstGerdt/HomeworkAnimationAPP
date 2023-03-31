//
//  DataStore.swift
//  HomeworkAnimationAPP
//
//  Created by Konstantin Durkin on 28.03.2023.
//

import SpringAnimation

class DataStore {
   
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
    
    private init() {}
    
}
