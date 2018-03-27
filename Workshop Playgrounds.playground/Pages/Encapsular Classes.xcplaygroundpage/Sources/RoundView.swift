import Foundation
import UIKit

public class roundView: UIView{
    
    public init (frame: CGRect, color: UIColor){
        super.init(frame: frame)
        
        self.backgroundColor = color
        self.layer.cornerRadius = self.frame.size.width/2
        createAnimation()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createAnimation(){
        UIView.transition(with: self, duration: 1, options: .transitionCrossDissolve, animations: {
            self.frame = CGRect(origin: self.frame.origin, size: CGSize(width: 300, height: 300))
            self.backgroundColor = UIColor.blue.withAlphaComponent(0)
            //Manter redondinho
            self.layer.cornerRadius = self.frame.size.width/2
        }, completion: { (ok) in
            //Liberar memoria
            self.removeFromSuperview()
        })
    }
}
