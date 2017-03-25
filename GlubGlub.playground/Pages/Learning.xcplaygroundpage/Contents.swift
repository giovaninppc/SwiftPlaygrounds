//: [Previous](@previous)
import UIKit
import PlaygroundSupport

let viewWidth  = 400
let viewHeight = 500

var background = UIView(frame: CGRect(x: 0,y: 0,width: viewWidth, height: viewHeight))

PlaygroundPage.current.liveView = background
background.backgroundColor = UIColor.white

//Navigation Bar
let navigationBar = UINavigationBar(frame: CGRect(x: 0,y: 0,width: viewWidth,height: 100))
navigationBar.setItems([UINavigationItem(title: "Title")], animated: false)
background.addSubview(navigationBar)

//Button
let button = UIButton()
button.setTitle("Button", for: .normal)
button.frame = CGRect(x: 50, y: 150, width: 75, height: 20)
button.backgroundColor = UIColor.blue
background.addSubview(button)

//TextField
let textField = UITextField(frame: CGRect(x: 50, y: 200, width: 300, height: 20))
textField.placeholder = "TextField"
textField.borderStyle = .line
background.addSubview(textField)

//Label
var label  = UILabel()
label.text = "Init"
label.frame = CGRect(x: 50, y: 250, width: 75, height: 20)
background.addSubview(label)


func updateView(){
    label.text = "wtf"
}
button.addTarget(button, action: Selector(("updateView")), for:  UIControlEvents.touchUpInside)

/*
 button.addTarget(nil, action: #selector(updateView), for: .touchUpInside)
 */
//: [Next](@next)
