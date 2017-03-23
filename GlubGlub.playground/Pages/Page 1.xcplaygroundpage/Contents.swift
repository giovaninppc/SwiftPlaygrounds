// Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


let container = UIView(frame: CGRect(x: 0,y: 0,width: 200,height: 200))

PlaygroundPage.current.liveView = container

container.backgroundColor = UIColor.white
let square = UIView(frame: CGRect(x: 50,y: 50,width: 100,height: 100))
square.backgroundColor = UIColor.red

container.addSubview(square)

UIView.animate(withDuration: 5.0, animations: {
    square.backgroundColor = UIColor.blue
    let rotation = CGAffineTransform(rotationAngle: -3.14)
    square.transform = rotation
    //square.center = CGPoint(x: 5, y: 10)
})

/*let miniView = UIButton(frame: CGRect(x: 10, y: 10, width:50, height: 50))
miniView.backgroundColor = UIColor.red
miniView.setTitle("Aperte", for: UIControlState.normal)
*/

//container.addSubview(view: miniView)


let image = UIImage(named: "cfa")
let imageView =  UIImageView(image: image)

let imageView2 = UIImageView (frame: CGRect(x:10, y:10, width:50, height: 50))
imageView2.image = image

container.addSubview(imageView2)

/*let frame = CGRect(x:0, y:0, width:300, height:300)

let view = UIView(frame: frame)
view.backgroundColor = UIColor.red
//PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = view

PlaygroundPage.current
*/


//PlaygroundPage.current.liveView = UIView(frame: Rect(0,0,100,100))

//let controller = MyViewController()


//: [Next](@next)