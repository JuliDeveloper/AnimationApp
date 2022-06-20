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
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonAnimate.setTitle("Run", for: .normal)
    }
    
    @IBAction func enableAnimation(_ sender: SpringButton) {
        
        discriptionLable.text = animation.description
        
        viewAnimate.animation = animation.name
        viewAnimate.curve = animation.curve
        viewAnimate.duration = animation.duration
        viewAnimate.delay = animation.delay
        viewAnimate.force = animation.force
        viewAnimate.animate()
        
        animation = Animation.getAnimation()
        
        sender.setTitle("NEXT: \(animation.name)", for: .normal)
    }
}

