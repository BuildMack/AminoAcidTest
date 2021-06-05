//
//  menuButton.swift
//  AminoAcidTest
//
//  Created by Mitchell Mackenzie Sell on 2021-06-04.
//

import UIKit

class menuButton: UIButton {

    override init(frame: CGRect){
        
        super.init(frame: frame)
        
    }
    
    init(title: String, fontSize: CGFloat) {
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false

        //Text
        self.setTitle(title, for: .normal)
        self.setTitleColor(.black, for: .normal)
        self.titleLabel?.font = UIFont.init(name: "Avenir Next", size: fontSize)
        self.backgroundColor = UIColor(red: 1.2, green: 0.40, blue: 0.64, alpha: 0.2)
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)

        //Border
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(white: 0.8, alpha: 1).cgColor
        self.layer.cornerRadius = 25

        //Shading
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 1.0, height: 4.0)
        self.layer.shadowRadius = 2
        self.layer.shadowOpacity = 0.5
        self.layer.masksToBounds = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
//        self.backgroundColor = UIColor(red: 1, green: 0.40, blue: 0.64, alpha: 0.5)
//
//        perform(#selector(tint), with: .none, afterDelay: 0.18)
         self.transform = CGAffineTransform(scaleX: 1.025, y: 1.025)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: -6, options: .curveEaseInOut, animations: {self.transform = CGAffineTransform.identity}, completion: nil)
        
        super.touchesBegan(touches, with: event)

    }
    
    
    
}
