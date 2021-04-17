//: [Previous](@previous)
//:
//: A grande graça desses caras, é podermos combinar as animações, gerando uma combinação de todas as funções de interpolação entre os estados
import UIKit
import PlaygroundSupport

let view = SquareView(frame: .init(x: 0, y: 0, width: 500, height: 800))
let square = view.square

let animation: () -> Void = {
    let transform = CGAffineTransform(scaleX: 2, y: 2)
    square.transform = transform
        .concatenating(.init(rotationAngle: 90))
        .concatenating(.init(translationX: 0, y: -200))
    square.layer.cornerRadius = 50.0
    square.backgroundColor = .blue
}

UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations: animation, completion: nil)

PlaygroundPage.current.liveView = view
//: [Next](@next)
