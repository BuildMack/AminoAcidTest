//
//  settingsView.swift
//  AminoAcidTest
//
//  Created by Mitchell Mackenzie Sell on 2021-06-05.
//

import UIKit

class settingsView: standardAppView {
    
    var homeButton: UIButton!

    override func loadView() {
    view = UIView()
        
    
    //Home Button
    let largeConfig = UIImage.SymbolConfiguration(pointSize: 50, weight: .light, scale: .small)
    
    let image = UIImage(systemName: "house.fill", withConfiguration: largeConfig)
    homeButton = UIButton()
    homeButton.translatesAutoresizingMaskIntoConstraints = false
    homeButton.tintColor = .black
    homeButton.frame.size = CGSize(width: 300, height: 300)
    homeButton.setImage(image, for: .normal)
    homeButton.backgroundColor = UIColor(red: 1.2, green: 0.40, blue: 0.64, alpha: 0.2)
    homeButton.layer.cornerRadius = 1
    homeButton.layer.borderWidth = 1
    homeButton.layer.borderColor = UIColor.black.cgColor
    homeButton.addTarget(self, action: #selector(home), for: .touchUpInside)
    view.addSubview(homeButton)
    
    }
    
    
    @objc func home() {

        dismiss(animated: true, completion: nil)

    }
}
