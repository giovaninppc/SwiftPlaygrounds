//: [Previous](@previous)
//:## Imagens com Escala
/*:
 Vamos montar de novo a nossa cena com o fundo branco, e colcoar nossa imagem numa UIImage*/
import UIKit
import PlaygroundSupport

var background = UIView(frame: CGRect(x: 0,y: 0,width: 200,height: 300))

PlaygroundPage.current.liveView = background
background.backgroundColor = UIColor.white

var image = UIImage(named: "cfa")
/*:
 Mas agora vamos instanciar um UIImageView com um contrutor diferente
 
 ao inves de usar a imagem como parametro, vamos usar um CGRect, e ele ja vai definir as dimensões do nosso UIImageView*/
let imageView =  UIImageView(frame: CGRect(x: 10, y:10, width: 50, height:50))
background.addSubview(imageView)

PlaygroundPage.current

/*:
 O mesmo atributo, poderia ser editado acessando esse parametro do imageView
 
 Digite **imageView.** e espera que ele vai te mostrar todos os metodos e atributos que voce tem acesso, e eh coisa pra carambolea
 
 Agora corre atras ai, vai aprendendo as coisas, se eu descobrir mais coisas legais eu coloco aqui pra todo mundo ver!!!*/

//: [Next](@next)
