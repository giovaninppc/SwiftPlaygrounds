//
//  Astronaut.swift
//  HuecoMundo
//
//  Created by Giovani Nascimento Pereira on 27/03/18.
//  Copyright © 2018 Giovani Nascimento Pereira. All rights reserved.
//

import SpriteKit


/// The astronaut movement decription
///
/// - left: move to left
/// - right: move to right
/// - up: move up
/// - down: move down
public enum AstronautMoves {
    case left
    case right
    case up
    case down
}

public class Astronaut{
    
    /// Convert a direction: AstronautMove struct value
    /// to a SKAction - force type
    ///
    /// - Parameter direction: the direction fro the AstronautMove
    /// - Returns: the equivalent force in a SKAction
    class func getAstrounautMove(_ direction: AstronautMoves) -> SKAction{
        switch direction {
        case .left:
            return SKAction.move(by: CGVector(dx: -1*moveForce, dy: 0), duration: moveDuration)
        case .right:
            return SKAction.move(by: CGVector(dx: moveForce, dy: 0), duration: moveDuration)
        case .up:
            return SKAction.move(by: CGVector(dx: 0, dy: moveForce), duration: moveDuration)
        case .down:
            return SKAction.move(by: CGVector(dx: 0, dy: -1*moveForce), duration: moveDuration)
        }
    }
}
