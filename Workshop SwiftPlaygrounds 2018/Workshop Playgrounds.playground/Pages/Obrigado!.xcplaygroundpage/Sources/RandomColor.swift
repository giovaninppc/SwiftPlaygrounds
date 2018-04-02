import Foundation
import UIKit

let colors: [UIColor] = [UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.red, UIColor.orange]


public class RandomColor{
    
    class func randomColor() -> UIColor{
        let random = arc4random_uniform(UInt32(colors.count))
        return colors[Int(random)]
    }
}

