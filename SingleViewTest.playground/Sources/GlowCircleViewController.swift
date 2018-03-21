import UIKit

class GlowCircleViewController : UIViewController {
    
    var timer: Timer?
    
    override func loadView() {
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
        
        self.view.addSubview(glowingCircle(frame: CGRect(x: CGFloat(X), y: CGFloat(Y), width: CGFloat(size), height: CGFloat(size)), color: UIColor.blue))
        
        print(self.view.subviews.count)
    }
    
    @objc func createRandomCircle(){
        let X = arc4random_uniform(UInt32(self.view.frame.maxX))
        let Y = arc4random_uniform(UInt32(self.view.frame.maxY))
        let size = arc4random_uniform(100)
        
        self.view.addSubview(glowingCircle(frame: CGRect(x: CGFloat(X), y: CGFloat(Y), width: CGFloat(size), height: CGFloat(size)), color: UIColor.green))
        
        print(self.view.subviews.count)
    }
}
