//: [Previous](@previous)
//: # Estruturas Básicas
//:
//: ## Arrays e Dicionários
import Foundation
/*:
 Aqui é muito simples!
 Se você está acostumado com algumas outras linguagens de programação, arrays em swift são bem semelhantes.
 Eles são definidos usando [] e você pode gerar um array de qualquer tipo de objeto:
 */
let intArray: [Int] = [Int]()  //Array vazio! - Mas eh do tipo array de Int
let intArray2 = [1,2,3,4,5,6]
let implicitDoubleArray = [0.2, 0.3, 0.4]
let stringArray = ["Amor", "Azul",  "Pão de queijo"]
/*:
 Podemos acessar cada posição de um array (onde tiver array, se te deixar mais confortável leia vetor) usando as chaves e o numero da posição.
 (*lembrando que em swift arrays começam no zero 😉*)
 */
intArray2[0]
intArray2[1]
/*:
 E um dicionário é uma relação de chave:valor.
 *Q?*
 Com um exemplo acho que fica mais fácil de entender. Você cria uma espécide de array, mas onde os itens (valor) são acessados através das chaves.
 Vamos criar alguns dicionários:
 */
let dicEmoji = ["cachorro":"🐶", "gato":"🐱",
                "urso":"🐻","panda":"🐼","elefante":"🐘","porco":"🐖"]
dicEmoji["gato"]
/*:
 Você pode explicitar o tipo do seu dicionário
 */
let dicIntString: [Int:String] = [0:"Zero", 1:"um", 2:"dois"]
dicIntString[2]



//#-hidden-code
import PlaygroundSupport
let view = SimpleViewController()
view.addLabel(text: "intArray2[0] = \(intArray2[0])\nintArray2[1] = \(intArray2[1])\ndicEmoji["gato"] = \(dicEmoji["gato"])\ndicIntString[2] = \(dicIntString[2])")
PlaygroundPage.current.liveView = view
//#-end-hidden-code


//: [Next](@next)
