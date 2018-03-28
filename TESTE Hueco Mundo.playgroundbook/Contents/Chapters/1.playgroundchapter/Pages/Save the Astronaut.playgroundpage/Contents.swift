//: [Previous](@previous)
//#-hidden-code

import PlaygroundSupport
import SpriteKit


let astronaut = GameViewController()
PlaygroundPage.current.liveView = astronaut
//#-end-hidden-code
//: # Save the Astronaut!
//: ### We need your help to bring him out of that strange planet
/*:
 The astronaut is equipped with a 4-directional jetpack on his backpack *(perfect for cool space missions 👩‍🚀👍)*
 
 During the fall, he lost access to the backpack controls. But there is still hope: **You can program it!**
 
 Using our remote server you can access and send a program to the astronaut's backpack.
 
 The backpack will accept 4 types of movement:
 - .up
 - .down
 - .left
 - .right
 
 The program is a sequence of movements to be performed by the astronaut.
 And you can only send one program to it.
 
 Run the code so you can see the planet.
 
 Explore the environment of the planet,
 you can move your camera around it and use the pinch gesture to zoom in and out.
 
 ![Gestures used on the Game: Pinch to zoom and Tap to run the code on the Backpack](controllers.png "How to interact with the scene")
 
 When your are ready tap the planet - and your program will run on the backpack.
 */
//: Edit the porgram on the line below, so you can save the astronaut.
astronaut.programBackpack([.right, .left, .up, .down])
