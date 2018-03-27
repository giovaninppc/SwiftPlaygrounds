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
    
//    public init(_ moves: [AstronautMoves]){
//        super.init()
//        backpackProgram = moves
//    }
//    
//    required public init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
    
    override public func loadView() {
        super.loadView()
        
        sceneView = SKView(frame: self.view.frame)
        
        if let scene = GameScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFit
            scene.spaceDelegate = self
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
}

/// End game controllers
extension GameViewController: SpaceDelegate{
    
    func didLeavePlanet() {
        let view = EndView(frame: CGRect(origin: CGPoint.zero, size: self.view.frame.size))
        self.view.addSubview(view)
    }
    
    func didNotLeavePlanet() {
        let view = WrongEndView(frame: CGRect(origin: CGPoint.zero, size: self.view.frame.size))
        self.view.addSubview(view)
    }
    
}
