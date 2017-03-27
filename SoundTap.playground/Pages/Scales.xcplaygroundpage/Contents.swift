//:# Scales
//:### Its been fun! How about learning a bit more?

import UIKit
import PlaygroundSupport
import AudioToolbox

let sceneWidth  : Int = 500
let sceneHeight : Int = 500

PlaygroundPage.current.needsIndefiniteExecution = true
//: Here we recreate our scene, but now, lets change from Arpeggios to Scales the sound that is going to be played.
//:
//: To do that, we call ou method **setToScales** 
//:
//: If you want to go back to Arpeggios, you can call the method **setToArpeggios**, or simply delete the *setToScales* call
let myScene = InteractivePanel()
myScene.setToScales()
myScene.setNumberOfNotes(7)
myScene.setPlayMode("minor")
PlaygroundPage.current.liveView = myScene.view
//: Once you have finished understanding this view, you should go to the next page
//: [Next](@next)
