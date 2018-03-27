//
//  EndGameViews.swift
//  HuecoMundo
//
//  Created by Giovani Nascimento Pereira on 27/03/18.
//  Copyright © 2018 Giovani Nascimento Pereira. All rights reserved.
//

import UIKit

public class EndView: UIView{
    
    override public func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        //Add congratulations text
        let label = UILabel(frame: CGRect(x: 20, y: 200, width: 500, height: 300))
        label.textColor = .white
        label.text = "Congratulations!\nYou saved the astronaut\n=]"
        label.numberOfLines = 3
        
        self.addSubview(label)
        
        self.backgroundColor = .clear
        animate()
    }
    
    func animate(){
        UIView.transition(with: self, duration: 2, options: .transitionCurlUp, animations: {
            self.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        }, completion: nil)
    }
    
}

public class WrongEndView: UIView{
    
    override public func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        //Add congratulations text
        let label = UILabel(frame: CGRect(x: 20, y: 200, width: 500, height: 300))
        label.textColor = .white
        label.text = "Oh no!\nThe astronaut is Trapped!\nYou should try another programming\nto your backpack...\n=/"
        label.numberOfLines = 5
        
        self.addSubview(label)
        
        self.backgroundColor = .clear
        animate()
    }
    
    func animate(){
        UIView.transition(with: self, duration: 2, options: .transitionCurlUp, animations: {
            self.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        }, completion: nil)
    }
    
}
