//:# Your Music!
//:### Make your own creations!
import UIKit
import PlaygroundSupport
import AudioToolbox

let sceneWidth  : Int = 500
let sceneHeight : Int = 500
//: Now we can have infinit fun!
//:
//: What was the difference between the modes when we were playing Arpeggios or Scales?
//:
//: The difference is that the difference between the notes are based on an array, wich each position tells our program how many semi tones it will increase or decrease to the next note.
//:
//: For example, to play from the *C* to the *D*, you need to add a number 2 on the array, because between those notes there are 2 semi tones. Between an *E* and a *F*, you should add a number 1, between an *A* and a *G sharp* you should add a -1 on the array, and so on...
//:
//: ![An Image of a keyboard shloud be displayed here. It also shows examples of the difference of tones between notes, for example, to play from the *C* to the *D*, there is a difference of 2 semi tones...](KeyboardTones.png)
//: If you take a look on our Keyboard here, when you go to the next note on the keyboard, it adds one semi tone, to the next one more semi tone.
//:
//: So, based on that, you can create your own songs to be played on our interactive panel!
//:
//: Use the methods **setToMySequence**, to tell the program that you want to execute your musical sequence
//:
//: And than, you need to add your musical sequence, in order to that, use the method **setMySequence**, and pass as a parameter the array of tunes for your song!
//: 
//:
PlaygroundPage.current.needsIndefiniteExecution = true
let myScene = InteractivePanel()
myScene.setToMySequences()
myScene.setMySequence(mySequenceOfNotes: [0, 2, 2, 3, -2, 0, 4, -2, 0, 5, -1, 1, -5, -3, -4, 2, 2, 1, 2, 2, -2, -2, -1, -2, 2, -4, -1, 1, 2, -7, 4, 3, 3, -1, -2, 2])

PlaygroundPage.current.liveView = myScene.view
//: Hope you enjoyed playing and leraning a little bit of music today! =]
//: Thaks for playing
