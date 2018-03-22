import Foundation
import UIKit

enum Colors {
    case yellow
    case green
    case blue
    case purple
    
    static func randomColor() -> UIColor {
        let colorsToGetRandomly = [Colors.blue, Colors.yellow, Colors.green, Colors.purple]
        let index = Int(arc4random_uniform(UInt32(colorsToGetRandomly.count)))
        let color = colorsToGetRandomly[index]
        
        return getColor(color: color)
    }
    
    static func getColor(color: Colors) -> UIColor{
        switch color {
        case .yellow:
            return UIColor.yellow
        case .green:
            return UIColor.green
        case .blue:
            return UIColor.blue
        case .purple:
            return UIColor.purple
        }
    }
}

public class RandomColor{
    
    public class func randomColor() -> UIColor{
        return Colors.randomColor()
    }
}
