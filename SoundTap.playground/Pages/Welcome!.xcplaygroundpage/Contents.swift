//:#  SoundTap
//:## Welcome to the SoundTap Playground!
//:### It's really exciting to have You here!

import UIKit
import PlaygroundSupport
import AudioToolbox

let sceneWidth  : Int = 500
let sceneHeight : Int = 500

PlaygroundPage.current.needsIndefiniteExecution = true

//: This Playground uses sound, so, make sure you have your sound on (and be careful not to leave it too loud!)
//:
//: Here, we create our interactive Panel.
//: The fun thing about this colorful madness is that anywhere you click, it will play an arpeggio based on your click's position.
//:
//: The more you go Up, the higher the notes will be,
//:
//: the more you go down, the lower.
//:
//: The more you go left, the slower the notes will be
//:
//: the more you go right, the faster!
let myScene = InteractivePanel()
PlaygroundPage.current.liveView = myScene.view

//: Once you have finished understanding this view, you should go to the next page
//: [Next](@next)
