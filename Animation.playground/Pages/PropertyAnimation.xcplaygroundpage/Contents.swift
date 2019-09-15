//: [Previous](@previous)

import UIKit
import PlaygroundSupport

//: Use UIViewPropertyAnimators to have fine control over animation completion and state

let view = MultiSquareView(frame: .init(x: 0, y: 0, width: 500, height: 800))

let squares = view.squares
var animators: [UIViewPropertyAnimator] = []

let animator0 = UIViewPropertyAnimator(duration: 2.0, curve: .linear) {
    squares[0].transform = CGAffineTransform(translationX: 300, y: 0)
}

let animator1 = UIViewPropertyAnimator(duration: 2.0, curve: .linear) {
    squares[1].backgroundColor = .red
}

let animator2 = UIViewPropertyAnimator(duration: 2.0, curve: .linear) {
    squares[2].transform = CGAffineTransform(rotationAngle: 180)
}

let animator3 = UIViewPropertyAnimator(duration: 2.0, curve: .linear) {
    squares[3].transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
}


animators = [animator0, animator1, animator2, animator3]

view.sliderUpdateMethod = { value in
    animators.forEach { $0.fractionComplete = value }
}

PlaygroundPage.current.liveView = view

//: [Next](@next)
