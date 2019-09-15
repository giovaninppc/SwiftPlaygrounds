import PlaygroundSupport
import UIKit
//:
//: [Previous](@Previous)
//: Vamos usar 3 animações básicas para os efeitos que queremos atingir
//: - Scale
//: - Rotate
//: - Translate
let view = MultiSquareView(frame: .init(x: 0, y: 0, width: 500, height: 800))

let squares = view.squares

let animations: () -> Void = {
    squares[0].transform = CGAffineTransform(scaleX: 2.0, y: 1.5)
    squares[1].transform = CGAffineTransform(rotationAngle: 45)
    squares[2].center = CGPoint(x: squares[2].center.x + 100, y: squares[2].center.y + 20)
}

UIView.animate(withDuration: 2.0, delay: 0.0, options: [.autoreverse, .repeat], animations: animations, completion: nil)

PlaygroundPage.current.liveView = view
//: [Next](@next)
