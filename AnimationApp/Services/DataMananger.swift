//
//  DataMananger.swift
//  AnimationApp
//
//  Created by Julia Romanenko on 16.06.2022.
//

import Foundation

class DataAnimation {
    
    static let shared = DataAnimation()
    
    let name = [
        "slideLeft",
        "shake",
        "pop",
        "morph",
        "squeeze",
        "wobble",
        "swing",
        "flipX",
        "flipY",
        "fall",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "fadeIn",
        "fadeOut",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "flash"
    ]
    
    let curve = [
        "spring",
        "linear",
        "easeIn",
        "easeOut",
        "easeInOut"
    ]
    
    let duration = Double.random(in: 1.00...3.00)
    let delay = Double.random(in: 0.10...1.00)
    
    private init() {}
}
