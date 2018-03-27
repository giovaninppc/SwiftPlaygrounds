//
//  Greens.swift
//  HuecoMundo
//
//  Created by Giovani Nascimento Pereira on 27/03/18.
//  Copyright © 2018 Giovani Nascimento Pereira. All rights reserved.
//

import UIKit
import SpriteKit

let vectorSizeGreen: CGFloat = 50.0
let animationDurationGreen: Double = 3

class Greens: SKSpriteNode {

    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        animate()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        animate()
    }
    
    func animate(){
        var animation: SKAction = SKAction.sequence([SKAction.move(by: CGVector(dx: vectorSizeGreen, dy: 0), duration: animationDurationGreen),
                                           SKAction.move(by: CGVector(dx: -1*vectorSizeGreen, dy: 0), duration: animationDurationGreen)])
        animation = SKAction.repeatForever(animation)
        self.run(animation)
    }
}
