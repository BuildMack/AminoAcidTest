//
//  ViewController.swift
//  AminoAcidTest
//
//  Created by Mitchell Mackenzie Sell on 2021-06-03.
//

import UIKit

class ViewController: UIViewController {
    
    var testButton: UIButton!
    var cueCardButton: UIButton!
    var memoryGameButton: UIButton!
    var ARButton: UIButton!
    var fallingGameButton: UIButton!
    
    var portrait: [NSLayoutConstraint]!
    var landscape: [NSLayoutConstraint]!
    
    override func loadView() {
        
        view = UIView()
        
        view.backgroundColor = UIColor(red: 0.68, green: 0.78, blue: 0.81, alpha: 1)
        
        //Main Page Button Set Up:
        
        //Test Button
        let testButton = bounceButton(type: .system)
        testButton.addTarget(self, action: #selector(openTestView), for: .touchUpInside)
        testButton.translatesAutoresizingMaskIntoConstraints = false
        
        //Text
        testButton.setTitle("Test Your Knowledge", for: .normal)
        testButton.setTitleColor(.black, for: .normal)
        testButton.titleLabel?.font = UIFont.init(name: "Avenir Next", size: deviceFontSize())
        testButton.backgroundColor = UIColor(red: 1, green: 0.40, blue: 0.64, alpha: 0.15)
        testButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        
        //Border
        testButton.layer.borderWidth = 1
        testButton.layer.borderColor = UIColor(white: 0.8, alpha: 1).cgColor
        testButton.layer.cornerRadius = 25
        
        //Shading
        testButton.layer.shadowColor = UIColor.black.cgColor
        testButton.layer.shadowOffset = CGSize(width: 1.0, height: 4.0)
        testButton.layer.shadowRadius = 2
        testButton.layer.shadowOpacity = 0.5
        
        testButton.layer.masksToBounds = false

        view.addSubview(testButton)
        
        //Con
        portrait = [
            testButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
        testButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
        testButton.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.8),
        testButton.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.15)]


        landscape = [
            testButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 200),
            testButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            testButton.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6),
            testButton.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.18)]
    
        
        
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func deviceFontSize() -> CGFloat {
        
        //Adjust the text size appropriately with the device screen size
        
        let baseFontSize = CGFloat(28)
        let bounds = UIScreen.main.bounds
        
        var deviceWidth: CGFloat
        
        if bounds.size.width < bounds.size.height {
        
            deviceWidth = bounds.size.width
        
        } else {
            
            deviceWidth = bounds.size.height
            
        }

        //Basing proportions off of an iPhone 12:
        
        let baseWidth = CGFloat(390)
        
        let fontSize = baseFontSize * (deviceWidth / baseWidth)
        
        return fontSize
    }
    
    
    override func viewDidLayoutSubviews() {
      
        if UIDevice.current.orientation.isPortrait {
            
            NSLayoutConstraint.deactivate(landscape)
            NSLayoutConstraint.activate(portrait)
            
        } else {
            
            NSLayoutConstraint.deactivate(portrait)
            NSLayoutConstraint.activate(landscape)
            
        }
    
    }
    
    @objc func openTestView() {
        
        print("Boom")
        
    }


}

