//
//  GoodJoke.swift
//  iKid
//
//  Created by Viru Repalle on 4/28/24.
//

import UIKit

class GoodJoke: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var flipButton: UIButton!
    
    var isLabel1Text = true
    let question = "Did you know deer can jump higher than the average house?"
    let response = "It’s because of their strong hind legs and the fact that the average house can’t jump."
    var isNextButton = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = question
        flipButton.setTitle("Next", for: .normal)
    }
    
    @IBAction func flipButtonTapped(_ sender: UIButton) {
        // Perform the flip animation
        let transitionOptions: UIView.AnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        UIView.transition(with: label, duration: 0.5, options: transitionOptions, animations: {
            self.label.text = self.isLabel1Text ? self.response : self.question
        }, completion: nil)
        isLabel1Text = !isLabel1Text
        
        let buttonText = isNextButton ? "Back" : "Next"
        flipButton.setTitle(buttonText, for: .normal)
        isNextButton = !isNextButton
    }
}
