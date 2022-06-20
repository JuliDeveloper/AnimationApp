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
    let force: Double
    
    var description: String {
        """
        name: \(name)
        curve: \(curve)
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        force: \(String(format: "%.2f", force))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(name: DataAnimation.shared.name.randomElement()?.rawValue ?? "",
                  curve: DataAnimation.shared.curve.randomElement()?.rawValue ?? "" ,
                  duration: DataAnimation.shared.duration,
                  delay: DataAnimation.shared.delay,
                  force: DataAnimation.shared.force)
    }
}
