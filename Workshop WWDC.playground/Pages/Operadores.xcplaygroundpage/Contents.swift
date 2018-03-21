//: [Previous](@previous)
//: # Estruturas Básicas
//:
//: ## Operadores
import Foundation
//: Existem vários operadores em Swift. Estes operadores podem ter
//: um  (*operadores unários*), dois (*operadores binários*) ou
//: três (*operadores ternários*) operandos.
//:
//: Um exemplo de operador unário é o operador lógico not (!)

let booleanValue = true
!booleanValue

//: - Note: O operador ! é escrito antes do operando, sendo portanto chamado
//: de operador pré-fixado. Temos também operadores unários pós-fixados
//: que são escritos após o operando. Veremos futuramente um exemplo deste.

//: Os operadores aritméticos, como a adição, são exemplos de
//: operadores binários:

let a = 3
let b = 5

a + b


//: O  operador ternário disponível é o operador ternário **?** lógico que
//: retorna o segundo operando, caso o primeiro operando (booleano) seja
//: verdadeiro, ou o terceiro, caso este seja falso. O primeiro operando
//: deve ser de tipo booleano, como dito anteriormente e os dois outros de
//: tipo compatível:

var expressão = true
expressão ? "Sim" : "Não"

//: Em Swift os operadores podem ser sobrecarregados para tipos diferentes,
//: tendo um comportamento adequado aquele tipo. Isto pode ser feito até
//: mesmo para tipos definidos para o usuário. Swift permite também a
//: criação de operadores customizados, o que está fora do escopo deste
//: conteúdo:

2 + 3
4.2 + 3
"Olá" + " Mundo!"


//#-hidden-code
import PlaygroundSupport
let view = SimpleViewController()
view.addLabel(text: "booleanValue = \(booleanValue)\na + b = \(a+b)\nOlá Mundo")
PlaygroundPage.current.liveView = view
//#-end-hidden-code


//: [Next](@next)
