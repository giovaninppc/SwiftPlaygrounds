//:# *Arpeggios*
//:### How about we make different kinds of Arpeggios?

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
//
//: Go on and try It! Change the number below and see the difference when you touch the pannel
let myScene = InteractivePanel()
myScene.setNumberOfNotes(10)
//: An *Arpeggio* here is made by getting the first, the third and the fifth note of a Scale (and that is the most common way to do an Arpeggio on a piano).
//:
//: ![A Keyboard image should be displayed here. The keys are marked with their referenced notes, such as "C", "D#", "A"...](KeyboardChord.png)
//: This is the picture of a piano keyboard, where the tree keys marked with the blue circle, represents the notes of the Arpeggio in C major
//:
//: We can also change the musical mode of the Arpeggio we are playing by using the **setPlayMode** method
//:
//: the registered modes are:
//: * "major"
//: * "minor"
//: * "mixolydian"
//:
//: The musical modes give a different feeling when we listen to them. We can usually compare the *major mode* to a happy feeling, and the *minor mode* to a sad one.
//: 
//: Choose the mode by chnaging the String on the method below
myScene.setPlayMode("major")
PlaygroundPage.current.liveView = myScene.view
//: Once you have finished understanding this view, you should go to the next page
//: [Next](@next)
