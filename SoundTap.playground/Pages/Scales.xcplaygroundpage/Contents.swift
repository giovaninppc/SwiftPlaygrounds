//:# Scales
//:### Its been fun! How about learning a bit more?
import UIKit
import PlaygroundSupport
import AudioToolbox

let sceneWidth  : Int = 500
let sceneHeight : Int = 500

PlaygroundPage.current.needsIndefiniteExecution = true
//: Here we recreate our scene, but now, let's change from Arpeggios to Scales the sounds that are going to be played.
//:
//: To do that, we call ou method **setToScales** 
//:
//: If you want to go back to Arpeggios, you can call the method **setToArpeggios**, or simply delete the *setToScales* call
//:
//: A Scale is a sequence of notes that represents all the notes on a tone. The **C** scale, starts on C and goes note by note, up to the next C. And they also have different musical modes!
let myScene = InteractivePanel()
myScene.setToScales()
myScene.setNumberOfNotes(8)
myScene.setPlayMode("mixolydian")
PlaygroundPage.current.liveView = myScene.view
//: Once you have finished understanding this view, you should go to the next page
//: [Next](@next)
