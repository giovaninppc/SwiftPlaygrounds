//: [Previous](@previous)
//:## Colocar mais coisas
/*:
 Ótimo, temos alguma coisa
 
 se quisermos adicionar mais coisas, precisamos lembrar que temos uma cena em execucao no nosso live view 
 
 **PlaygroundPage.current.liveView** tem uma UIView já associada a ele
 
 mas a gente pode adicionar coisas nessa cena*/
//:Lembrem de Importar as bibliotecas, so da pra usar o liveView com a PlaygroundSupport
import UIKit
import PlaygroundSupport

var background = UIView(frame: CGRect(x: 0,y: 0,width: 200,height: 200))

PlaygroundPage.current.liveView = background
background.backgroundColor = UIColor.white
/*:
 Por que meu retângulo ali chama *background* ? 
 
 pq, pela experiencia de 5 horas de Playground que me deve, eh muito mais facil se a gente criar um fundo da nossa cena, o *background*.
 
 ai a gente cria UIViews novas e adicionamos àquela view
 
 E usa as dimensoes do nosso fundo, como base para movimentacao dos outros objetos lá dentro*/

let square = UIView(frame: CGRect(x: 50,y: 50,width: 50,height: 50))
square.backgroundColor = UIColor.blue

background.addSubview(square)
PlaygroundPage.current

/*:
 Agora, dentro da mesma View do background, temos nosso quadrado azul*/

//: [Next](@next)
