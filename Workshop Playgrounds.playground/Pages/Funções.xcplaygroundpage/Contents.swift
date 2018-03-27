//: [Previous](@previous)
//: # Estruturas Básicas
//:
//: ## Funções
import Foundation
/*:
 Ahhh funções... 😎
 
 ahhh...
 
 a.....
 
 (sério gente to pensando em como explicar isso).
 
 Vamos lá - funções são trechos de código que você escreve, e pode chamar pra ser executado em outro lugar - sem ter que reescrever esse código.
 
 Pra quem gosta de coisas baixo nível - são rotinas e subrotinas, controladas por saltos e desvios de execução.
 
 */
// Essa função, quando invocada, vai apenas printar Hello World
func myFunc(){
    print("Hello World")
}

myFunc()

var testeFunc = myFunc
testeFunc()
/*:
 Uma loucura, é que em Swift, funções SÃO tipos - elas são consideradas "cidadãos de primeira classe" - podem ser atribuídas para viriáveis, ou usadas como parâmetro
 
 - > Não sei se lembram nessa altura do campeonato mas Swift é multiparadigma, e funções fortemente tipadas como cidadãos de primeira classe são umas das bases da programação funcional 🤯.
 */
// Essa função, quando invocada, vai retornar o valor 3
func myReturnFunc() -> Int{
    return 3
}

let teste2: ()->Int = myReturnFunc
/*:
 A função acima é do tipo **()->Int** ou seja, ela retorna um valor do tipo Int ao final da sua execução
 */
// Essa função recebe um valor Int como parâmetro e retorna um Int
func twice(_ numero: Int) -> Int{
    return numero*2
}

twice(5)
/*:
 A função acima é do tipo **(Int)->Int** ou seja, ela retorna um valor do tipo Int ao final da sua execução e recebe um valor do tipo Int como parâmetro
 */
/*:
 E para ser executada, uma função, basta chamá-la pelo nome:
 */
myFunc()
let x = myReturnFunc()
let y = twice(x)
/*:
 O formato de uma função pode então ser definido como:
 
 **func** <nome da funcao>([<label do parametro><label interna do parametro>:<tipo do parametro>]) -> <tipo de retorno>
 
 O retorno **void** pode ser omitido.
 
 Um parâmetro tem que ser tipado, e ele pode ter 2 nomes - um externo (quando chamada a função, esse nome tem que ser explicitado) e um interno (para ser usado dentro da função).
 
 Se houver um label só - ele serve para tanto interno quanto externo.
 
 O label externo pode ser omitido usando _
 */
// Uma função de multiplicação
func multiply(_ number: Int, by multiplier: Int) -> Int{
    return number * multiplier
}
multiply(5, by: 2)
//Atribuir uma função a uma variável, faz com que os labels sejam perdidos
let M = multiply
//Usar a função guardada
M(4,6)



//#-hidden-code
import PlaygroundSupport
let view = SimpleViewController()
view.addLabel(text: "Hello World\nx = 3\ny = 2*3\nmultiply(5, by: 2) == 5*2 == 10\nM(4,6) == 4*6 == 24")
PlaygroundPage.current.liveView = view
//#-end-hidden-code

//: [Next](@next)
