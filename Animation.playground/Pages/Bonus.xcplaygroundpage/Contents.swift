//: [Previous](@previous)
import UIKit
import PlaygroundSupport
/*:
 ## Bônus

 Dá pra animar e fazer qualquer coisa concatenando animações, alterando propriedades.
 Uma coisa legal é animar imagens, que você pode pensar no conteúdo da sua imagem, onde está cada coisa, e calcular as animações para obter o efeito desejado.

 */
let view = Scene(frame: .init(x: 0, y: 0, width: 800, height: 800))
let logo = view.logo
logo.alpha = 0.0
logo.transform = logo.transform
    .concatenating(.init(rotationAngle: 0.5))

let startAnimation: () -> Void = {
    let transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
    logo.transform = transform
        .concatenating(.init(rotationAngle: 0.0))
    logo.alpha = 1.0
}

let step1: () -> Void = {
    UIView.animate(withDuration: 1.0, delay: 1.0, options: [.curveEaseIn], animations: startAnimation, completion: step2)
}

let middleAnimation: () -> Void = {
    logo.transform = logo.transform
        .concatenating(.init(scaleX: 1.2, y: 1.2))
        .concatenating(.init(rotationAngle: -0.1))
}

let step2: (Bool) -> Void = { _ in
    UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseOut], animations: middleAnimation, completion: step3)
}

let endAnimation: () -> Void = {
    logo.transform = logo.transform
        .concatenating(.init(rotationAngle: .pi * 7))
        .concatenating(.init(scaleX: 0.0001, y: 0.0001))
}

let step3: (Bool) -> Void = { _ in
    UIView.animate(withDuration: 1.2, delay: 0.2, options: [.curveEaseInOut], animations: endAnimation, completion: nil)
}

step1()

PlaygroundPage.current.liveView = view
//: [Next](@next)
