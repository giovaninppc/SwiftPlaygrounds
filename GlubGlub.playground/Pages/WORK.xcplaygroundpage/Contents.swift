//: [Previous](@previous)

import UIKit
import PlaygroundSupport

let sceneWidth  : Int = 400
let sceneHeight : Int = 500

class MyInteractiveScene {
    
    var view:UIView?
    private var touchableView:UIView?
    
    init() {
        
        view = UIView(frame: CGRect(origin: CGPoint(x:0,y:0), size: CGSize(width: sceneWidth, height: sceneHeight
        )))
        
        view?.backgroundColor = UIColor.white
        
        touchableView = UIView(frame: CGRect(origin: CGPoint(x:50,y:50), size: CGSize(width: 100, height: 100
        )))
        
        touchableView?.backgroundColor = UIColor.blue
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(MyInteractiveScene.tapView(tapGesture:)))
        
        touchableView?.addGestureRecognizer(tap)
        
        
        touchableView?.layer.cornerRadius = 25.0
        touchableView?.clipsToBounds = true
        
        view?.addSubview(touchableView!)
        
    }
    
    @objc
    func tapView(tapGesture:UITapGestureRecognizer) {
        let pos = tapGesture.location(in: touchableView)
        print("Tap na posição \(pos)")
    }
    
    
}

let myScene = MyInteractiveScene()

PlaygroundPage.current.liveView = myScene.view

//: [Next](@next)
