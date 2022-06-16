//
//  ViewController.swift
//  AnimationApp
//
//  Created by Julia Romanenko on 16.06.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var viewAnimate: SpringView!
    @IBOutlet weak var discriptionLable: UILabel!
    @IBOutlet weak var buttonAnimate: SpringButton!
    
    var stateAniamtion: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonAnimate.setTitle("Run", for: .normal)
    }
    
    @IBAction func enableAnimation(_ sender: SpringButton) {
        
        var animationView = Animation.getAnimation()
        let animationButton = Animation.getAnimation()
        
        if stateAniamtion == nil {
            stateAniamtion = animationButton
        } else {
            animationView = stateAniamtion
            stateAniamtion = animationButton
        }
        
        discriptionLable.text =
            """
            name: \(animationView.name)
            curve: \(animationView.curve)
            duration: \(String(format: "%.2f", animationView.duration))
            delay: \(String(format: "%.2f", animationView.delay))
            force: \(String(format: "%.2f", animationView.force))
            """
        
        viewAnimate.animation = animationView.name
        viewAnimate.curve = animationView.curve
        viewAnimate.duration = animationView.duration
        viewAnimate.delay = animationView.delay
        viewAnimate.force = animationView.force
        viewAnimate.animate()
        
        sender.setTitle(animationView.name, for: .normal)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            sender.setTitle("NEXT: \(animationButton.name)", for: .normal)
        }
        
    }
}

