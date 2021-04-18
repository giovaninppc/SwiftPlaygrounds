//: [Previous](@Previous)
import PlaygroundSupport
import UIKit
//: ## Ease in-out
//:
//: Usar o ease -in -out para deixar as aimações mais suaves nas extremidades
//: - Linear
//: - Ease in
//: Ease out
//: Ease in-out (default)
/*:

 O _"Ease"_ quer dizer que estamos _suavizando_ a interpolação em uma das extrremidades da curva.
 Note no exemplo a seguir, uma interpolaçãso linear, a posição da bolinha é igualmente espaçada no tempo

 ![](linear.png)

 E agora, criamos um _ease-in_, onde o começo da animação é mais suave, e ela acelera no final.

 ![](ease-in.png)

 E um outro exemplo usando uma curva de _ease-in-out_ ounde a animação é suavizada tanto no começo, como no final.

 ![](ease-in-out.png)

 */
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
