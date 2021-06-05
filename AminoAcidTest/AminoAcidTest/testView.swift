//
//  testView.swift
//  AminoAcidTest
//
//  Created by Mitchell Mackenzie Sell on 2021-06-04.
//

import UIKit

class testView: UIViewController {
    
    var gradient = CAGradientLayer()
    var answersLabel: UILabel!
    var answersOneLetterLabel: UILabel!
    var answersThreeLetterLabel: UILabel!
    var answersGroupLabel: UILabel!
    var answersStructureLabel: UILabel!
    var answersNameLabel: UILabel!
    var questionsLabel: UILabel!
    var homeButton: UIButton!
    
    
    
override func loadView() {
    
    view = UIView()
    
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    guard let homeViewController = storyBoard.instantiateViewController(withIdentifier: "Main") as? ViewController else {return}
    
    //Labels
    
    //Answers Label
    
    answersLabel = UILabel()
    answersLabel.translatesAutoresizingMaskIntoConstraints = false
    answersLabel.font = UIFont.systemFont(ofSize: homeViewController.deviceFontSize(28))
    answersLabel.text = "Select Answer Types"
    answersLabel.textAlignment = .center
    answersLabel.numberOfLines = 1
    answersLabel.layer.cornerRadius = 8
    answersLabel.backgroundColor = UIColor(red: 1.2, green: 0.40, blue: 0.64, alpha: 0.2)
    answersLabel.layer.borderWidth = 1
    view.addSubview(answersLabel)
    
    // Questions Label
    
    questionsLabel = UILabel()
    questionsLabel.translatesAutoresizingMaskIntoConstraints = false
    questionsLabel.font = UIFont.systemFont(ofSize: homeViewController.deviceFontSize(28))
    questionsLabel.text = "Select Question Types"
    questionsLabel.backgroundColor = UIColor(red: 1.2, green: 0.40, blue: 0.64, alpha: 0.2)
    questionsLabel.textAlignment = .center
    questionsLabel.layer.cornerRadius = 8
    questionsLabel.numberOfLines = 1
    questionsLabel.layer.borderWidth = 1
    view.addSubview(questionsLabel)
    
    
    //Buttons
    
    //Home Button
    let largeConfig = UIImage.SymbolConfiguration(pointSize: 50, weight: .light, scale: .small)
    
    let image = UIImage(systemName: "house.fill", withConfiguration: largeConfig)
        homeButton = UIButton()
        homeButton.tintColor = .black
        homeButton.frame = CGRect(x: 250, y: 400, width: 100, height: 100)
        homeButton.setImage(image, for: .normal)
        homeButton.backgroundColor = UIColor(red: 1.2, green: 0.40, blue: 0.64, alpha: 0.2)
        homeButton.layer.cornerRadius = 50
        homeButton.layer.borderWidth = 1
        homeButton.layer.borderColor = UIColor.black.cgColor
        homeButton.addTarget(self, action: #selector(home), for: .touchUpInside)
        view.addSubview(homeButton)
        
    
    
    
    
    //Constraints
    
    let portrait = [
        
        // Question Label
        questionsLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
        questionsLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
        questionsLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.8),
        questionsLabel.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.1),
    
        // Answer Label
        
        answersLabel.topAnchor.constraint(equalTo: questionsLabel.bottomAnchor, constant: 10),
        answersLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
        answersLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.8),
        answersLabel.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.1),
    
//        //home button
//        homeButton.topAnchor.constraint(equalTo: answersLabel.bottomAnchor,constant: 20),
//        homeButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
//        homeButton.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.2),
    
    
    
    
    ]
    
    NSLayoutConstraint.activate(portrait)
    
    
    
    
    //Reused code to make the gradient
    
    gradient.colors = [UIColor.white.cgColor, UIColor(red: 0.68, green: 0.78, blue: 0.81, alpha: 1).cgColor]
    gradient.startPoint = CGPoint(x: 0, y: 0)
    gradient.endPoint = CGPoint(x:0, y:0.5)
    view.layer.insertSublayer(gradient, at: 0)
  
}
    
    
    
    
    
    override func viewDidLayoutSubviews() {
        
        
        gradient.frame = view.bounds
    }
    
    
    
    @objc func home() {

        dismiss(animated: true, completion: nil)

    }
    
    
}
