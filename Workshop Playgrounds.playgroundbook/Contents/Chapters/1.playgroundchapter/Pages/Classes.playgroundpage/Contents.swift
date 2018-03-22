//: [Previous](@previous)
//: # Estruturas Básicas
//:
//: ## Classes
import Foundation
/*:
 Agora a coisa complica um pouco
 
 Classes são a base de POO - Programação Orientada a Objetos
 
 Mas por cima, MUITO por cima, classes são trechos de códigos usados para gerar objetos, que funcionam como variáveis, ou se preferir trechos de memória e código, que contém tanto métodos, quando propriedades (variáveis e constantes) dentro de si.
 */
//Aqui vamos definir uma classe
class MyClass{
    var x: Int = 0
    var y: Double = 0.0
}

//E você pode criar uma instância dessa classe - gerando assim um objeto
let myObject = MyClass()

//E acessar as propriedades da sua classe
myObject.x
myObject.y
/*:
 E para os conhecedores de OOP (ou POO), podemos fazer herança entre classes:
 */
//Aqui a MyChildClass herda tudo que sua classe pai MyClass tem
class MyChildClass: MyClass{}

let myChildObject = MyChildClass()

myChildObject.x
myChildObject.y
/*:
 Podemos extender uma classe adicionando mais coisas
 */
//Criando uma extensão de MyClass
extension MyClass{
    func multiply(_ number: Int, by value: Int) -> Int{
        return number * value
    }
}
myObject.multiply(4, by: 5)
/*:
 Quando criamos uma classe, não precisamos definir todas as suas variáveis na hora de criação - mas se não o fizermos, precisamos de um construtor para a classe - um método **init**
 */
class OtherClass{
    var number: Int
    init (number: Int){
        //Propriedades da classe podem ser referenciadas com self. caso haja ambiguidade
        self.number = number
    }
}
/*:
 TODAS as variáveis da classe tem que ser inicializadas no seu construtor.
 MENOS as variáveis do tipo Optional - que por default tem o valor nil
 */
class OptionalClass{
    var name: String?
}
/*:
 O que vamos fazer aqui em frente é herdar classes do sistema - importando bibliotecas e alterando essas classes para o que precisarmos
 */
import UIKit
class newView: UIView{
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        //Aditional override code
    }
}

/*:
 *Swift não suporta herança multipla de classes, mas sim herança multipla de protocolos.*
 */

//: [Next](@next)


//#-hidden-code
import PlaygroundSupport
let view = SimpleViewController()
view.addLabel(text: "myObject.x = 0\nmyObject.y = 0.0\nmyChildObject.x = 0\nmyChildObject.y = 0.0\nmyObject.multiply(4, by: 5) == 4*5 == 20")
PlaygroundPage.current.liveView = view
//#-end-hidden-code
