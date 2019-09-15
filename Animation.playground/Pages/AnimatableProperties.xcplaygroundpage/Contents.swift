//: [Previous](@previous)
//: ## Outras propriedades animáveis que são legais de se mexer com
import UIKit
import PlaygroundSupport

let view = MultiSquareView(frame: .init(x: 0, y: 0, width: 500, height: 800))

let squares = view.squares

let animations: () -> Void = {
    squares[0].backgroundColor = .red
    squares[1].layer.cornerRadius = 50
    squares[2].alpha = 0.0
    squares[3].transform = CGAffineTransform(scaleX: 1.5, y: 0.5)
    squares[4].transform = CGAffineTransform(scaleX: 0.5, y: 1.5)
}

UIView.animate(withDuration: 2.0, delay: 0.0, options: [.autoreverse, .repeat], animations: animations, completion: nil)

PlaygroundPage.current.liveView = view

//: [Next](@next)
