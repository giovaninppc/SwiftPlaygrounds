//:# Scales
//:### Its been fun! How about learning a bit more?

import UIKit
import PlaygroundSupport
import AudioToolbox

let sceneWidth  : Int = 500
let sceneHeight : Int = 500

PlaygroundPage.current.needsIndefiniteExecution = true
//:
let myScene = InteractivePanel()
myScene.setNumberOfNotes(7)
//: 
myScene.setPlayMode("major")
PlaygroundPage.current.liveView = myScene.view
//: Once you have finished understanding this view, you should go to the next page
//: [Next](@next)
