//
//  Yellows.swift
//  HuecoMundo
//
//  Created by Giovani Nascimento Pereira on 27/03/18.
//  Copyright © 2018 Giovani Nascimento Pereira. All rights reserved.
//

import UIKit
import SpriteKit

let vectorSizeYellow: CGFloat = 50.0
let animationDurationYellow: Double = 4.0

public class Yellows: SKSpriteNode {

    class func animate(node: SKSpriteNode){
        var animation: SKAction = SKAction.sequence([SKAction.move(by: CGVector(dx: 0, dy: vectorSizeYellow), duration: animationDurationYellow),
                                           SKAction.move(by: CGVector(dx: 0, dy: -1*vectorSizeYellow), duration: animationDurationYellow)])
        animation = SKAction.repeatForever(animation)
        node.run(animation)
    }
}
