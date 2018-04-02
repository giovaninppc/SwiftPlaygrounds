//
//  EndGameViews.swift
//  HuecoMundo
//
//  Created by Giovani Nascimento Pereira on 27/03/18.
//  Copyright © 2018 Giovani Nascimento Pereira. All rights reserved.
//

import UIKit

public class EndView: UIView{
    
    var imageView: UIImageView?
    var endStory: [UIImage] = [UIImage(named: "01")!, UIImage(named: "02")!, UIImage(named: "03")!]
    var timer: Timer?
    var counter: Int = 0
    var player: Player = Player()
    
    override public func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        self.backgroundColor = .clear
        animate()
    }
    
    func animate(){
        UIView.transition(with: self, duration: 6.0, options: .transitionCurlUp, animations: {
            self.backgroundColor = UIColor.black
        }, completion: { (ok) in
            self.showHistory()
        })
    }
    
    func showHistory(){
        
        //Create the image View
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200 , height: 350))
        imageView?.backgroundColor = .white
        imageView?.contentMode = .scaleAspectFit
        imageView?.translatesAutoresizingMaskIntoConstraints = false
        
        //Add constraints
        let topConstraint = NSLayoutConstraint(item: imageView!, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0)
        let bottomConstraint = NSLayoutConstraint(item: imageView!, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0)
        let leftConstraint = NSLayoutConstraint(item: imageView!, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0)
        let rightConstraint = NSLayoutConstraint(item: imageView!, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0)
        
        //Add to Superview
        self.addSubview(imageView!)
        self.addConstraints([topConstraint,leftConstraint,rightConstraint,bottomConstraint])
        
        UIView.transition(with: self, duration: 2, options: .transitionCrossDissolve, animations: {
            self.imageView!.image = self.endStory[0]
            self.player.playConnect()
            self.counter += 1
            
        }, completion: { (ok) in
            //Start the story
            self.timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(EndView.continueStory), userInfo: nil, repeats: true)
        })
        
    }
    
    @objc func continueStory(){
        
        if counter < endStory.count{
            self.imageView!.image = endStory[counter]
        }
        else if counter == endStory.count{
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 5000 , height: 5000))
            view.backgroundColor = .clear
            self.addSubview(view)
            
            UIView.transition(with: self, duration: 5, options: .transitionCrossDissolve, animations: {
                view.backgroundColor = .black
            }, completion: { (ok) in
                self.showSEA()
            })
        }
        else {
            timer?.invalidate()
        }
        
        switch counter {
        case 1:
            player.playFire()
            player.playRadio()
        default:
            print("Done")
        }
        
        counter += 1
    }
    
    func showSEA(){
        imageView?.image = UIImage(named: "SEA")!
        imageView?.backgroundColor = .black
        UIView.transition(with: self, duration: 2, options: .transitionCrossDissolve, animations: {
            self.bringSubview(toFront: self.imageView!)
        }, completion: nil)
    }
    
}

public class WrongEndView: UIView{
    
    override public func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        //Add congratulations text
        let label = UILabel(frame: CGRect(x: 20, y: 200, width: 500, height: 300))
        label.textColor = .white
        label.text = "Oh no!\nThe astronaut is Trapped!\nYou should try another program\non your backpack...\n=/"
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
