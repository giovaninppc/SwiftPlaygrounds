//:## How about we make different kinds of Arpeggios?

import UIKit
import PlaygroundSupport
import AudioToolbox

let sceneWidth  : Int = 500
let sceneHeight : Int = 500

PlaygroundPage.current.needsIndefiniteExecution = true
//: It is more fun when we can make our own kind of music, right?
//:
//: The first step to that is choosing the size of your arpeggio
//:
//: Using the **setNumberOfNotes** method of our interactive pannel, you can add a new parameter wich tells our pannel the amout of notes the Arpeggio is going to have. This number, is an interger (*Int*), and represents the number of Up notes on the Arpeggio
//:
//: Go on and try It! Change the number below and see the difference when you touch the pannel
let myScene = InteractivePanel()
myScene.setNumberOfNotes(12)
//: We can also change the musical mode of the Arpeggio we are playing by using the **setPlayMode** method
//:
//: the registered modes are "major" and "minor" scales
//: 
//: Choose the mode by chnaging the String on the method below
myScene.setPlayMode("minor")
PlaygroundPage.current.liveView = myScene.view
//: Once you have finished understanding this viwe, you shold go to the next page
//: [Next](@next)
