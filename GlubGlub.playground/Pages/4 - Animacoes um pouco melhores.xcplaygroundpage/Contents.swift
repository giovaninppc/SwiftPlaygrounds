//: [Previous](@previous)
//:## Animações um pouco melhores
/*:
 Vamos montar de novo a nossa cena e dar uma mexida na animação*/
import UIKit
import PlaygroundSupport

var background = UIView(frame: CGRect(x: 0,y: 0,width: 200,height: 200))

PlaygroundPage.current.liveView = background
background.backgroundColor = UIColor.white

let square = UIView(frame: CGRect(x: 50,y: 50,width: 100,height: 100))
square.backgroundColor = UIColor.red

background.addSubview(square)

/*:
 Você lembra que a animação faz a transição entre os estados inicial e final de maneira contínua?
 
 Nós podemos fazer isso com basicamente qualquer atributo das nossas UIViews
 
 e para demosntrar vamos fazer com a cor do nosso quadrado e com a rotação dele
 */
UIView.animate(withDuration: 5.0, animations: {
    square.backgroundColor = UIColor.blue
    let rotation = CGAffineTransform(rotationAngle: -3.14)
    square.transform = rotation
})

PlaygroundPage.current
//: [Next](@next)
