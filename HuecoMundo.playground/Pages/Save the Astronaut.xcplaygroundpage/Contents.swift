//: A SpriteKit based Playground
//#-hidden-code

import PlaygroundSupport
import SpriteKit


let astronaut = GameViewController()
PlaygroundPage.current.liveView = astronaut
//#end-hiden-code

astronaut.programBackpack([.up, .up, .down, .left, .right, .left, .right])
