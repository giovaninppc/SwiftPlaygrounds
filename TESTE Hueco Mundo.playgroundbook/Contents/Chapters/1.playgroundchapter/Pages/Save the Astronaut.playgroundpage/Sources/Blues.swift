//
//  Blues.swift
//  HuecoMundo
//
//  Created by Giovani Nascimento Pereira on 27/03/18.
//  Copyright © 2018 Giovani Nascimento Pereira. All rights reserved.
//

import UIKit
import SpriteKit

let rotationAngleBlue: CGFloat = 0.4
let animationDurationBlue: Double = 4.0

class Blues: SKSpriteNode {

    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        animate()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        animate()
    }
    
    func animate(){
        var animation: SKAction = SKAction.sequence([SKAction.rotate(byAngle: rotationAngleBlue, duration: animationDurationBlue),
                                                     SKAction.rotate(byAngle: -1.0*rotationAngleBlue, duration: animationDurationBlue)])
        animation = SKAction.repeatForever(animation)
        self.run(animation)
    }
    
}
