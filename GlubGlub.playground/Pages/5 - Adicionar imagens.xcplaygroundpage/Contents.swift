//: [Previous](@previous)
//:## Adicionar Imagens
/*:
 Vamos montar de novo a nossa cena mas só com o fundo branco*/
import UIKit
import PlaygroundSupport

var background = UIView(frame: CGRect(x: 0,y: 0,width: 200,height: 300))

PlaygroundPage.current.liveView = background
background.backgroundColor = UIColor.white

/*:
 Para adicionar uma imagem a gente precisa de um UIImage, e um objeto desse tipo tem varias formas de ser instanciado, vamos ver uma delas*/
var image = UIImage(named: "cfa")
/*:
 Aqui, criamos um novo UIImage, e colocamos lá uma imagem que está nos meus Resoures que é a "cfa.png" 
 
 Mas veja que só com isso, a imagem não aparece na nossa tela, precisamos adicionar ao View que está no LiveView
 
 Contudo, não podemos adicionar um UIImage diretamente como um subview*/
//background.addSubview(image) //Isso da errado!
/*:
 Precisamos coloca a UIImage num UIImageViewm que é uma classe que extende a UIView, e então adicionamos a nossa cena*/
let imageView =  UIImageView(image: image)
background.addSubview(imageView)

PlaygroundPage.current

/*:
 So que o que rolou?
 
 a imagem ficou toda gosviyatsdouya
 
 isso porque ela é maior que o nosso background*/

//: [Next](@next)
