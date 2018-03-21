//: [Previous](@previous)
//: # Estruturas Básicas
//:
//: ## Valores, Constantes e Variáveis
import Foundation
//: Em Swift temos constantes e variáveis. As primeiras são definidas com a
//: palavra chave *let* e as segundas com *var*.

let constant:String = "Valor constante"
var variable:String = "Valor alterável"

//:Podemos alterar o valor de uma variável:
variable = "Novo valor"

//: Mas, se tentarmos fazer o mesmo com uma constante, teremos um erro.
//: Podemos ver isto caso removamos o comentário da próxima linha:
//constant = "Novo valor"

//: O tipo de uma variável nem sempre precisa ser definido de forma explícita,
//: como nos exemplos acima. Swift possui um mecanismo de inferência de tipos
//: que tenta definir o tipo da variável de acordo com o valor a ele atribuído:

let implicitInteger = 7
let implictDouble = 7.0
let implicitString = "Uma string"

//:Valores nunca são implicitamente convertidos para outro tipo, caso
//:deseje fazê-lo é necessário fazer a conversão de forma explícita:

let sentence = "O resultado é "
let result = 30

let completeSentence = sentence + String(result)

//:Teremos um erro caso a próxima linha seja descomentada, por exigir o
//:*casting* de um inteiro para uma string:
//let invalidCasting = sentence + result

//: - Note: Swift aceita tanto nomes de variáveis quanto valores em Unicode:

let π = 3.1415
let 変化するもの = "変化するもの"
let 🌭 = "hot dog"


//#-hidden-code
import PlaygroundSupport
let view = SimpleViewController()
view.addLabel(text: "π = 3.1415 \n変化するもの = \"変化するもの\" \n🌭 = \"hot dog\"")
PlaygroundPage.current.liveView = view
//#-end-hidden-code


//: [Next](@next)


