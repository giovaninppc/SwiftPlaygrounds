//
//  GameViewController.swift
//  HuecoMundo
//
//  Created by Giovani Nascimento Pereira on 20/03/18.
//  Copyright © 2018 Giovani Nascimento Pereira. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

public class GameViewController: UIViewController {
    
    public var sceneView: SKView?
    public var backpackProgram: [AstronautMoves] = [AstronautMoves]()
    private var scene:GameScene?
    
    
    override public func loadView() {
        super.loadView()
        
        sceneView = SKView(frame: CGRect(x:0 , y:0, width: 640, height: 480))
        
        if let scene = GameScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFit
            scene.spaceDelegate = self
            self.scene = scene
            
            // Present the scene
            sceneView!.presentScene(scene)
        }
        sceneView!.ignoresSiblingOrder = false
        self.view = sceneView!
    }
    
    public func ProgramBackpack(){
        let game = sceneView!.scene as! GameScene
        game.moveAstronaut(backpackProgram)
    }
    
    
    /// Load the backpack program
    ///
    /// - Parameter moves: the movement
    public func programBackpack( _ moves:[AstronautMoves]) {
        backpackProgram = moves
    }
    
}

/// End game controllers
extension GameViewController: SpaceDelegate{
    
    /// The astronaut is free!
    func didLeavePlanet() {
        let view = EndView(frame: CGRect(origin: CGPoint.zero, size: self.view.frame.size))
        self.view.addSubview(view)
    }
    
    /// The astronaut is trapped!
    func didNotLeavePlanet() {
        let view = WrongEndView(frame: CGRect(origin: CGPoint.zero, size: self.view.frame.size))
        self.view.addSubview(view)
    }
    
    /// Return the backpack Program
    ///
    /// - Returns: the backpack Program
    public func getMoves() -> [AstronautMoves] {
        return backpackProgram
    }
    
}
