//
//  GameScene.swift
//  HuecoMundo
//
//  Created by Giovani Nascimento Pereira on 20/03/18.
//  Copyright © 2018 Giovani Nascimento Pereira. All rights reserved.
//

import SpriteKit
import GameplayKit

let moveForce: CGFloat = 200.0
let moveDuration: Double = 0.8

public class GameScene: SKScene {
    
    var astronautNode: SKNode!
    var exitNode: SKNode!
    var spaceDelegate: SpaceDelegate?
    
    //Collision Bit Masks
    struct PhysicsCategory {
        static let none: UInt32      = 0     // 0
        static let astronaut: UInt32 = 0b1   // 1
        static let exit: UInt32     = 0b10   // 2
        static let all: UInt32     = 0b1111111111
    }
    
    var astronautMoveAction: SKAction = SKAction()
    var moving: Bool = false
    var collided: Bool = false
    var startPinchScale: CGFloat = 1
    
    func initialize(){
        self.astronautNode = self.childNode(withName: "astronaut")!
        self.astronautNode.position = CGPoint.zero
        if let body = self.astronautNode.physicsBody{
            body.categoryBitMask = PhysicsCategory.astronaut
            body.contactTestBitMask = PhysicsCategory.exit
            body.collisionBitMask = PhysicsCategory.all ^ PhysicsCategory.exit
        }
        
        self.exitNode = self.childNode(withName: "exit")!
        if let body = self.exitNode.physicsBody{
            body.categoryBitMask = PhysicsCategory.exit
            body.contactTestBitMask = PhysicsCategory.astronaut
            body.collisionBitMask = PhysicsCategory.none
        }
        
        loadEnemies()
        
        //Move answer
       // moveAstronaut([.right, .down, .left, .left, .left, .up, .up, .up, .left, .left])
        //moveAstronaut(backpackprogram)
        
        //Defining camera Scale
        self.camera?.xScale = 1.5
        self.camera?.yScale = 1.5
        
        //Configure Wold Physics delegate
        self.physicsWorld.contactDelegate = self
    }
    
    /// Configure the Gestures on the game
    ///
    /// - Parameter view: the View
    override public func didMove(to view: SKView) {
        
        initialize()
        // Add touch to move
        self.scene?.view?.addGestureRecognizer( UITapGestureRecognizer(target: self, action:#selector(GameScene.handleTapGesture(tapGestureRecognizer:)) ))
        
        //Add pinch to zoom
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(GameScene.pinchGestureHandle(sender:)))
        self.view?.addGestureRecognizer(pinchGesture)
    }
    
    override public func update(_ currentTime: TimeInterval) {
    }
    
    /// This method override allows the camera to move around the gameScene
    ///
    /// - Parameters:
    ///   - touches: A Set of UITouch done by the user on the view
    ///   - event: UIEvent
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        
        //Update Camera Position
        let location = touch.location(in: self)
        let previousLocation = touch.previousLocation(in: self)
        
        updateCameraPosition(previousLocation: previousLocation, location: location)
    }
    
    // This method makes the camera move around the board
    /// respecting the limits of the board
    ///
    /// - Parameters:
    ///   - previousLocation: Camera previous location - given by the touchesMoved override
    ///   - location: The next location to place the camera
    fileprivate func updateCameraPosition(previousLocation: CGPoint, location: CGPoint){
        //Calculating the border limits - considering the camera scale
        let maxLimit: CGFloat = 1000
        let minLimit: CGFloat = -1000
        
        //Boundaries right - top
        var xInset = min((camera?.position.x)! + previousLocation.x - location.x, maxLimit)
        var yInset = min((camera?.position.y)! + previousLocation.y - location.y, maxLimit)
        
        //Boundaries left - bottom
        xInset = max(xInset, minLimit)
        yInset = max(yInset, minLimit)
        
        //Move Camera
        camera?.position.x = xInset
        camera?.position.y = yInset
    }
    
    
    /// Handles the Pinch gesture (check didMove() func)
    /// rescale the camera accordingly the pinch gesture size
    ///
    /// - Parameter sender: the pinch gesture recognizer added to board game the view
    @objc func pinchGestureHandle(sender: UIPinchGestureRecognizer){
        
        if sender.state == .began{
            //Store the initial scale factor...
            startPinchScale = sender.scale + (camera?.xScale)!
            
        } else if sender.state == .changed{
            
            //Define scale limits depending on device...
            let maxScale: CGFloat
            let minScale: CGFloat
            
            maxScale = 2
            minScale = 0.8
            
            //... and than use it to adjust te current scale factor
            //based on the pinch gestue scale
            //Setting (X,Y) Scale for the camera
            var newScale = max(startPinchScale - sender.scale, minScale)
            newScale = min(newScale, maxScale)
            
            //Adding new scale to the camera
            camera?.yScale = newScale
            camera?.xScale = newScale
            
            //Do not pass the board limits
            updateCameraPosition(previousLocation: (camera?.position)!, location: (camera?.position)!)
        }
    }
    
    /// If Touch - move the astronaut
    ///
    /// - Parameter tapGestureRecognizer: tapGesture
    @objc func handleTapGesture(tapGestureRecognizer:UITapGestureRecognizer){
        
        //Get the backpack program
        if let moves = spaceDelegate?.getMoves() {
             moveAstronaut(moves)
        }
        
        //Start Moving
        if moving == false{
            moving = true
            self.astronautNode.run(astronautMoveAction)
        }
        
    }
    
    /// Creates the SKAction which moves the astronaut around the scene
    ///
    /// - Parameter moves: an array with the directions to be moved
    public func moveAstronaut(_ moves: [AstronautMoves]){
        var sequence: [SKAction] = [SKAction]()
        for direction in moves{
            sequence.append(Astronaut.getAstrounautMove(direction))
            sequence.append(SKAction.wait(forDuration: 0.4))
        }
        sequence.append(SKAction.run {
            self.endMoving()
        })
        astronautMoveAction = SKAction.sequence(sequence)
    }
    
    /// The astronaout didn't leave the planet!
    ///And now you are out of gas x.x
    ///
    func endMoving(){
        if collided == false{
            spaceDelegate?.didNotLeavePlanet()
        }
    }
    
    /// Start all enemies animations
    ///
    func loadEnemies(){
        //Purples
        for i in 1...4{
            let purple = self.childNode(withName: "purple0\(i)")! as! SKSpriteNode
            Purples.animate(node: purple)
        }
        
        //Yellows
        for i in 1...4{
            let yellow = self.childNode(withName: "yellow0\(i)")! as! SKSpriteNode
            Yellows.animate(node: yellow)
        }
        
        //Greens
        for i in 1...3{
            let green = self.childNode(withName: "green0\(i)")! as! SKSpriteNode
            Greens.animate(node: green)
        }
        
        //Blues
        for i in 1...4{
            let blue = self.childNode(withName: "blue0\(i)")! as! SKSpriteNode
            Blues.animate(node: blue)
        }
    }
}

extension GameScene: SKPhysicsContactDelegate{
    
    /// Treat collision
    ///
    /// - Parameter contact: the contact object
    public func didBegin(_ contact: SKPhysicsContact){
        
        let collision = contact.bodyA.categoryBitMask | contact.bodyB.categoryBitMask
        if collision ==  PhysicsCategory.astronaut | PhysicsCategory.exit{
            self.collided = true
            astronautNode.run(SKAction.sequence([SKAction.move(to: CGPoint(x:-887, y: 550), duration: 3.0), SKAction.move(to: CGPoint(x:-602, y: 832), duration: 3.0)]))
            if let view = spaceDelegate{
                view.didLeavePlanet()
            }
        }
    }
}

protocol SpaceDelegate{
    func didLeavePlanet()
    func didNotLeavePlanet()
    func getMoves() ->  [AstronautMoves]
}
