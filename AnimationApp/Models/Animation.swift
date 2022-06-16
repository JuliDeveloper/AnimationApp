//
//  Animation.swift
//  AnimationApp
//
//  Created by Julia Romanenko on 16.06.2022.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let dataAnimation = DataAnimation.shared
        
        let name = dataAnimation.name.randomElement() ?? ""
        let curve = dataAnimation.curve.randomElement() ?? ""
        let duration = dataAnimation.duration
        let delay = dataAnimation.delay
        
        return Animation(name: name, curve: curve, duration: duration, delay: delay)
    }
}
