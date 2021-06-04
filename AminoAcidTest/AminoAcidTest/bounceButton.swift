//
//  bounceButton.swift
//  AminoAcidTest
//
//  Created by Mitchell Mackenzie Sell on 2021-06-03.
//

import UIKit

class bounceButton: UIButton {
    
//    @objc func tint() {
//        self.backgroundColor = UIColor(red: 1, green: 0.40, blue: 0.64, alpha: 0.15)
//    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
//        self.backgroundColor = UIColor(red: 1, green: 0.40, blue: 0.64, alpha: 0.5)
//
//        perform(#selector(tint), with: .none, afterDelay: 0.18)
         self.transform = CGAffineTransform(scaleX: 1.025, y: 1.025)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: -6, options: .curveEaseInOut, animations: {self.transform = CGAffineTransform.identity}, completion: nil)
        
        super.touchesBegan(touches, with: event)

    }
    

}
