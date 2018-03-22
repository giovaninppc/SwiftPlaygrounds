//: [Previous](@previous)
//: # Estruturas Básicas
//:
//: ## Optionals
import Foundation
/*:
 Optionals são uma coisa muito louca que tem em Swift.
 
 Um Optional de um tipo, que dizer que aquela variável, ou constante, pode conter um valor daquele tipo, ou nenhum valor (nil).
 */
var x: Int? = 4
x = nil
x = 5
/*
 Optionals são indicados pela interrogação junto ao tipo. E se aplicam a quase todos os tipos de dados.
 
 É como se o optional encapsulasse um tipo dentro dele note que:
 - Um Int? != Int
 */
var y: Int = 5
//: Se você descomentar a linha abaixo, vai gerar um erro
//y = x + y
/*:
 Se quisermos pegar o valor que o Optional encapsula temos que "tirá-lo" de dentro do seu casulo - isso em Swift, chama-se Unwrap
 */
y = x! + y
/*:
 O unwrap é indicado pelo operador ! ou ? (não confundir com a negação que é o mesmo operador - mas com um valor booleano prefixado / e nem confundir com o operador ternário condicional).
 
 Qual a diferença de ? e !
 - !: *Forced Unwrap* você vai forçar a retirada do valor de dentro do Optional - se não tover um valor lá dentro, tiver um nil - vai gerar um erro
 - ?: *Conditional unwrap* só vai tirar o valor se ele for diferente de nil
 
 Cabe ao programador decidir e garantir que não haja erros ao utilizar esse valores.
 */

//: [Next](@next)


//#-hidden-code
import PlaygroundSupport
let view = SimpleViewController()
view.addLabel(text: "x = \(x ?? 0)\ny = \(y)")
PlaygroundPage.current.liveView = view
//#-end-hidden-code
