import Foundation
import UIKit

public class GlowingCircle : UIView{
    
    override public init(frame: CGRect) {
        super .init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public init(frame: CGRect, color: UIColor) {
        super .init(frame: frame)
        
        self.layer.cornerRadius = self.bounds.size.width/2;
        self.layer.masksToBounds = true;
        
        self.backgroundColor = color
        
        growAnimation()
    }
    
    func growAnimation(){
        UIView.animate(withDuration: 1, animations: {
            let frame = self.frame
            self.frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width*2, height: frame.height*2)
            self.layer.cornerRadius = self.bounds.size.width/2;
            self.backgroundColor = .clear
        }) { (ok) in
            self.removeFromSuperview()
        }
    }
}
