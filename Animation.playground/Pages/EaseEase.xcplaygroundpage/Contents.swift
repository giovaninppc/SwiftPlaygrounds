//: [Previous](@Previous)
import PlaygroundSupport
import UIKit

//: Usar o ease -in -out para deixar as aimações mais suaves nas extremidades
//: - Linear
//: - Ease in
//: Ease out
//: Ease in-out (default)
let view = MultiSquareView(frame: .init(x: 0, y: 0, width: 500, height: 800))

let squares = view.squares

UIView.animate(withDuration: 2.0, delay: 0.0, options: [.autoreverse, .repeat, .curveLinear], animations: {
    squares[0].transform = CGAffineTransform(translationX: 300, y: 0)
}, completion: nil)

UIView.animate(withDuration: 2.0, delay: 0.0, options: [.autoreverse, .repeat, .curveEaseIn], animations: {
    squares[1].transform = CGAffineTransform(translationX: 300, y: 0)
}, completion: nil)

UIView.animate(withDuration: 2.0, delay: 0.0, options: [.autoreverse, .repeat, .curveEaseOut], animations: {
    squares[2].transform = CGAffineTransform(translationX: 300, y: 0)
}, completion: nil)

UIView.animate(withDuration: 2.0, delay: 0.0, options: [.autoreverse, .repeat, .curveEaseInOut], animations: {
    squares[3].transform = CGAffineTransform(translationX: 300, y: 0)
}, completion: nil)

PlaygroundPage.current.liveView = view
//: [Next](@next)
