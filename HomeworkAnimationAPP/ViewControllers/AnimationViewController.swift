//
//  ViewController.swift
//  HomeworkAnimationAPP
//
//  Created by Konstantin Durkin on 28.03.2023.
//

import UIKit
import SpringAnimation

final class AnimationVeiwController: UIViewController {

//MARK: - IB Outlets

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
//MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
//MARK: - IB Actions
    
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
        
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
}

