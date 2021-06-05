//
//  standardAppView.swift
//  AminoAcidTest
//
//  Created by Mitchell Mackenzie Sell on 2021-06-05.
//

import UIKit


class standardAppView: UIViewController {
    
    var gradient: CAGradientLayer!
    var portrait: [NSLayoutConstraint]!
    var landscape: [NSLayoutConstraint]!
    
    func setBackground(view: UIView, gradient: CAGradientLayer) {
        
       view.backgroundColor = UIColor(red: 0.68, green: 0.78, blue: 0.81, alpha: 1)
        
        gradient.colors = [UIColor.white.cgColor, UIColor(red: 0.68, green: 0.78, blue: 0.81, alpha: 1).cgColor]
        
        print(gradient.frame)
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x:0, y:0.5)

        view.layer.insertSublayer(gradient, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
      
        if UIDevice.current.orientation.isPortrait {

            NSLayoutConstraint.deactivate(landscape)
            NSLayoutConstraint.activate(portrait)

        } else {

//            NSLayoutConstraint.deactivate(portrait)
//            NSLayoutConstraint.activate(landscape)

            NSLayoutConstraint.deactivate(landscape)
            NSLayoutConstraint.activate(portrait)
        }
        
        gradient.frame = view.bounds
    
    }
    
}
