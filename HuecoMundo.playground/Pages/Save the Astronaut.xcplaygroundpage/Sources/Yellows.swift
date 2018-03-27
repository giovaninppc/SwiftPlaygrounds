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

class Yellows: SKSpriteNode {

    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        animate()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        animate()
    }
    
    func animate(){
        var animation: SKAction = SKAction.sequence([SKAction.move(by: CGVector(dx: 0, dy: vectorSizeYellow), duration: animationDurationYellow),
                                           SKAction.move(by: CGVector(dx: 0, dy: -1*vectorSizeYellow), duration: animationDurationYellow)])
        animation = SKAction.repeatForever(animation)
        self.run(animation)
    }
}
