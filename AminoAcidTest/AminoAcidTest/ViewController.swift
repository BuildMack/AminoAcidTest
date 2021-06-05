//
//  ViewController.swift
//  AminoAcidTest
//
//  Created by Mitchell Mackenzie Sell on 2021-06-03.
//

import UIKit

class ViewController: standardAppView {
    
    var testButton: UIButton!
    var cueCardButton: UIButton!
    var memoryGameButton: UIButton!
    var ARButton: UIButton!
    var fallingGameButton: UIButton!
    var settingsButton: UIButton!
    
    override func loadView() {
        
        view = UIView()
        gradient = CAGradientLayer()
        setBackground(view: view, gradient: gradient)
        
        
        //Main Page Button Set Up:
        
        //Test Button
        let testButton = menuButton(title: "Start Test", fontSize: deviceFontSize(28))
        let cueCardButton = menuButton(title: "Cue Cards", fontSize: deviceFontSize(28))
        let gameButton = menuButton(title: "Memory Game", fontSize: deviceFontSize(28))
        let arButton = menuButton(title: "3D Models", fontSize: deviceFontSize(28))
        
        testButton.addTarget(self, action: #selector(openTestView), for: .touchUpInside)
        cueCardButton.addTarget(self, action: #selector(openTestView), for: .touchUpInside)
        gameButton.addTarget(self, action: #selector(openTestView), for: .touchUpInside)
        arButton.addTarget(self, action: #selector(openTestView), for: .touchUpInside)

        
        view.addSubview(testButton)
        view.addSubview(cueCardButton)
        view.addSubview(gameButton)
        view.addSubview(arButton)
        
        //Settings Button
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 40, weight: .light, scale: .medium)
        let image = UIImage(systemName: "gearshape.fill", withConfiguration: largeConfig)
        settingsButton = UIButton()
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        settingsButton.tintColor = .black
        settingsButton.frame.size = CGSize(width: 300, height: 300)
        settingsButton.setImage(image, for: .normal)
        //settingsButton.backgroundColor = UIColor(red: 1.2, green: 0.40, blue: 0.64, alpha: 0.2)
        settingsButton.layer.cornerRadius = 3
        //settingsButton.layer.borderWidth = 1
        //settingsButton.layer.borderColor = UIColor.black.cgColor
        settingsButton.addTarget(self, action: #selector(openSettingsView), for: .touchUpInside)
       
        view.addSubview(settingsButton)
        

        //Constraints
        
        //Portrait Constraints
        portrait = [
            
            // Test Button
            testButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            testButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            testButton.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.8),
            testButton.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.2),
        
            // Cue Cards Button
            cueCardButton.topAnchor.constraint(equalTo: testButton.bottomAnchor, constant: 20),
            cueCardButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            cueCardButton.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.8),
            cueCardButton.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.2),
            
            // Game Button
            gameButton.topAnchor.constraint(equalTo: cueCardButton.bottomAnchor, constant: 20),
            gameButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            gameButton.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.8),
            gameButton.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.2),
            
            //Augmented Reality Button
            arButton.topAnchor.constraint(equalTo: gameButton.bottomAnchor, constant: 20),
            arButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            arButton.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.8),
            arButton.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.2),
        
            //Settings Button
            
            settingsButton.topAnchor.constraint(equalTo: arButton.bottomAnchor),
            settingsButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            settingsButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
            //settingsButton.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.1),
            //settingsButton.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.1)
            ]
            

        
        //Landscape Constraints
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
    
    func deviceFontSize(_ originalSize: CGFloat) -> CGFloat {

        //Adjust the text size appropriately with the device screen size

        let baseFontSize = originalSize
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
    
    @objc func openTestView() {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        if let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Test") as? testView {
        
            nextViewController.modalPresentationStyle = .fullScreen
            
            present(nextViewController, animated:true, completion:nil)
        
        }
        
    }
    
    @objc func openSettingsView() {
            
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
        if let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Settings") as? settingsView {
            
            nextViewController.modalPresentationStyle = .fullScreen
                
            present(nextViewController, animated:true, completion:nil)
            
        }
        
    }
    
    
}

