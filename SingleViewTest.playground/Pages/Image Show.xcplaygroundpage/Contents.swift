//: [Previous](@previous)

import Foundation
import PlaygroundSupport
import UIKit

public class localViewController: UIViewController{
    
    //var imageView = UIImageView()
    
    override public func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
        
        //imageView.frame = self.view.frame
    }
    
    func showHistory(){
        
    }
    
}

PlaygroundPage.current.liveView = localViewController()

//: [Next](@next)
