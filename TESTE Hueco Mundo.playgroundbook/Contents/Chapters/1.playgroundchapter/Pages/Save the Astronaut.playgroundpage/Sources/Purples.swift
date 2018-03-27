//
//  Purples.swift
//  HuecoMundo
//
//  Created by Giovani Nascimento Pereira on 27/03/18.
//  Copyright © 2018 Giovani Nascimento Pereira. All rights reserved.
//

import UIKit
import SpriteKit

let rotationAngle: CGFloat = 5.0
let animationDuration: Double = 6

class Purples: SKSpriteNode {
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        animate()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        animate()
    }
    
    func animate(){
        let factor:CGFloat = CGFloat(arc4random_uniform(4) + 1)
        var animation: SKAction = SKAction.sequence([SKAction.rotate(byAngle: rotationAngle * factor, duration: animationDuration * Double(factor/2)),
                                           SKAction.rotate(byAngle: -1*rotationAngle * factor, duration: animationDuration * Double(factor/2))])
        animation = SKAction.repeatForever(animation)
        self.run(animation)
    }
    
}
