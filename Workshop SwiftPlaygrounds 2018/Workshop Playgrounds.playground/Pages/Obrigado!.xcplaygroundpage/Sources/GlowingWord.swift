import Foundation
import UIKit

public class GlowingWord : UIView{
    
    var label: UILabel = UILabel()
    
    override public init(frame: CGRect) {
        super .init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public init(frame: CGRect, color: UIColor) {
        super .init(frame: frame)
        
        label = UILabel(frame: CGRect(x: 0, y: 0, width: 500, height: 200))
        label.text = RandomThanks.random()
        label.textColor = color
        
        self.addSubview(label)
        fadeAnimation()
    }
    
    func fadeAnimation(){
        UIView.animate(withDuration: 2, animations: {
            let frame = self.frame
            self.frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width*2, height: frame.height*2)
        }) { (ok) in
            self.removeFromSuperview()
        }
    }
}


public class GlowingEmoji : UIView{
    
    var label: UILabel = UILabel()
    
    override public init(frame: CGRect) {
        super .init(frame: frame)
        
        label = UILabel(frame: CGRect(x: 0, y: 0, width: 500, height: 200))
        label.text = RandomThanks.randomEmoji()
        self.addSubview(label)
        fadeAnimation()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func fadeAnimation(){
        UIView.animate(withDuration: 2, animations: {
            let frame = self.frame
            self.frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width*2, height: frame.height*2)
        }) { (ok) in
            self.removeFromSuperview()
        }
    }
}
