//: [Previous](@previous)
//:## Animações Simples
/*:
 Vamos fazer de novo nosso BG com o quadradinho azul dentro dele 
 
 (dessa vez eu aumentei um pouco o tamanho das coisas, ok?)*/
import UIKit
import PlaygroundSupport

var background = UIView(frame: CGRect(x: 0,y: 0,width: 200,height: 200))

PlaygroundPage.current.liveView = background
background.backgroundColor = UIColor.white

let square = UIView(frame: CGRect(x: 50,y: 50,width: 100,height: 100))
square.backgroundColor = UIColor.blue

background.addSubview(square)
/*:
 Pra animar as coisas, a gente usa a UIView.animate, que é um método muito louco, que pra quem usa Flash vai amar
 
 Da mesma forma que o flash, você seta as posições, ou estados finais dos seus objetos da View, e ele vai fazer uma transição contínua até que isso aconteça
 */
UIView.animate(withDuration: 5.0, animations: {
    square.backgroundColor = UIColor.blue
    square.center = CGPoint(x: 5, y: 10)
})
/*:
 Nesse caso, eu só movimentei o meu quadrado da posicao (50, 50) - que é onde ele foi instanciado, para a posição (5, 10)*/

//: [Next](@next)
