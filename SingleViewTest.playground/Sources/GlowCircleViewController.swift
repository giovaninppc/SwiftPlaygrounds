import Foundation
import UIKit

public class GlowCircleViewController : UIViewController {
    
    var timer: Timer?
    
  override public func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        let touch = UITapGestureRecognizer(target: self, action: #selector(tapHandler))
        self.view.addGestureRecognizer(touch)
        
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(createRandomCircle), userInfo: nil, repeats: true)
    }
    
    @objc func tapHandler(){
        let X = arc4random_uniform(UInt32(self.view.frame.maxX))
        let Y = arc4random_uniform(UInt32(self.view.frame.maxY))
        let size = arc4random_uniform(100)
        
        self.view.addSubview(GlowingCircle(frame: CGRect(x: CGFloat(X), y: CGFloat(Y), width: CGFloat(size), height: CGFloat(size)), color: UIColor.blue))
    }
    
    @objc func createRandomCircle(){
        let X = arc4random_uniform(UInt32(self.view.frame.maxX))
        let Y = arc4random_uniform(UInt32(self.view.frame.maxY))
        let size = arc4random_uniform(100)
        
        self.view.addSubview(GlowingCircle(frame: CGRect(x: CGFloat(X), y: CGFloat(Y), width: CGFloat(size), height: CGFloat(size)), color: RandomColor.randomColor()))
    }
}
