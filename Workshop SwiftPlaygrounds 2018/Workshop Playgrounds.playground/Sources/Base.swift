import Foundation
import UIKit

public class SimpleViewController: UIViewController{
    
    override public func loadView(){
        self.view = UIView(frame: CGRect(x:0, y:0, width:500, height: 500))
        self.view.backgroundColor = .black
        
    }
    
    public func addLabel(text: String){
        let label = UILabel(frame: CGRect(x:10, y:100, width:500, height: 500))
        label.text = text
        label.textColor = .green
        label.numberOfLines = 0
        self.view.addSubview(label)
    }
}
