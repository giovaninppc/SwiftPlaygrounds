//: A SpriteKit based Playground
//#-hidden-code

import PlaygroundSupport
import SpriteKit


let liveView = GameViewController()
PlaygroundPage.current.liveView = liveView
//#end-hiden-code

liveView.programBackpack([.up, .up, .down, .left, .right, .left, .right])
