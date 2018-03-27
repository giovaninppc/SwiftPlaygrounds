//: [Previous](@previous)
//: # Estruturas Básicas
//:
//: ## Comandos de Condição
import Foundation
/*:
 Padrão da nossa vida, o comando condicional mais simples é o **if**, que pode ser traduzido literalmente para um **se**.
 Ele gera um bloco de código que será executado penas se a condição dele for verdadeira.
 */
var x = 0
if x > -1 {
    print("\(x) é positivo")
}
/*:
 E o if acompanha o **else**, que contém um bloco de código que será executado SE a condição anterior não for satisfeita.
 Um else só faz sentido se tiver um if antes dele.
 */
if x > 100{
    print("\(x) maior que 100")
}
else {
    print( "\(x) menor que 100")
}
/*:
 *Os parênteses no if, sõ opcionais*
 
 A condição, é sempre uma expressão booleana - ou seja uma expressão que retorna verdadeiro ou falso. E para números, eles podem ser avaliados usando os operadores comumente conhecidos:
 -  .> Maior que
 -  < Menor que
 -  .>= Maior ou igual
 -  <= Menor ou igual
 -  == Igual
 */
/*:
 
 Um comando condicional um pouco mais avançado, é pra tratar mlehor os valores opcionais: o **if-let**
 
 Ele atribui o valor do Optional para a variável que você coloca na frente od let, e no bloco de código interno você pode usar essa variável.
 Ou seja, ele só executa o código interno se o Optional não for nil.
 */
var y: Int? = 4

if let z = y{
    print("\(z), y não era nil")
}
/*:
 O if-let tambem aceita o else
 */
y = nil

if let z = y{
    print("\(z), y não era nil")
} else {
    print("y era nil")
}
/*:
 E o ultimo comando condicional que vamos ver é o **switch-case** YAY!
 */
switch x {
//: - Cada *case* pode tratar um único valor:
case 1:
    print("Valor é 1")
//: - Um conjunto finito de valores separado por vírgulas:
case 3,5:
    print("Valor é 3 ou 5")
//: - Uma faixa de valores (o que é definido por ...):
case 8...15:
    print("Valor está entre 8 e 15")
//: - Uma faixa de valores aberta (definido por ..<):
case 16..<20:
    print("Valor está entre 16 e 19")
    
/*:
    O comando switch deve ser exaustivo. Sendo assim, caso
    nem todos os valores possíveis sejam tratados em uma cláusula
    é necessário incluir uma cláusula *default* para tratar todos
     os valores não cobertos:
 */
default:
    print("Outro valor")
}

enum teste{
    case amor
    case lua
    case love
}

var variavel: teste = teste.amor
switch variavel{
case .amor:
    print("amor")
case .lua:
    print( "lua")
case .love:
    print("love")
}


//#-hidden-code
import PlaygroundSupport
let view = SimpleViewController()
view.addLabel(text: "\(x) é positivo\n\(x) menor que 100\ny não era nil\ny era nil")
PlaygroundPage.current.liveView = view
//#-end-hidden-code

//: [Next](@next)
