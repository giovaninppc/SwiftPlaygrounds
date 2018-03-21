import Foundation
import UIKit

class glowingCircle : UIView{
    
    override init(frame: CGRect) {
        super .init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(frame: CGRect, color: UIColor) {
        super .init(frame: frame)
        self.backgroundColor = color
        self.layer.cornerRadius = frame.width
        
        growAnimation()
    }
    
    func growAnimation(){
        UIView.animate(withDuration: 1, animations: {
            let frame = self.frame
            self.frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width*2, height: frame.height*2)
            self.layer.cornerRadius = self.frame.size.width
            self.backgroundColor = .clear
        }) { (ok) in
            self.removeFromSuperview()
        }
    }
}
