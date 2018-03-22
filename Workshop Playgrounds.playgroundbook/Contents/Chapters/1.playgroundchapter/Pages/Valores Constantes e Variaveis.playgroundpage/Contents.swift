//: [Previous](@previous)
//: # Estruturas Básicas
//:
//: ## Valores, Constantes e Variáveis
import Foundation
//: Em Swift temos constantes **let** e variáveis **var**.
//: A única diferença é que constantes não pdoem ter seus valores alterados, apenas lidor (dã!)
//:
//: Note o formato: let <Nome>:<Tipo> = <Valor>
let constant:String = "Valor constante"
var variable:String = "Valor alterável"
//:Podemos alterar o valor de uma variável:
variable = "Novo valor"
//: Mas, se tentarmos fazer o mesmo com uma constante, NÃO VAI FUNCIONAR
//: Remove o comentário da próxima linha só pra vc ver 👀
//constant = "Novo valor"
/*:
 Por ser multiparadigma - não só por isso - mas Swift tem uma tipagem forte - tipo, muito forte
 
 Isso significa que você nunca poderá atribuir um tipo a outro  - se eles forem compatíveis você ainda não conseguirá atribuir sem um cast explícito.
 
 Mas isso também significa que você não precisa definir os tipos de forma explícita (eu particularmente gosto de fazer isso)
 mas o sistema consegue inferir qual tipo vocês está *colocando*
 */
let implicitInteger = 7
let implictDouble = 7.0
let implicitString = "Uma string"
let completeSentence = implicitString + String(implictDouble)
/*:
 E se você tentar descomentar a linha abaixo - vai gerar outro erro 🙃
 */
//let error= implicitString + implictDouble
/*:
 Uma loucura é que Swift aceita caracteres especiais e unicodes!
 
 Você pode literalmente codar em japonês, mandarim ,ou em emoji!
 
 *Pelo amor de tudo que é mais sagrado - não faça isso. Use com parcimônia esses poderes, mesmo se convir.*
 */
let π = 3.1415
let 変化するもの = "変化するもの"
let 🌭 = "hot dog"


//: [Next](@next)


//#-hidden-code
import PlaygroundSupport
let view = SimpleViewController()
view.addLabel(text: "π = 3.1415 \n変化するもの = \"変化するもの\" \n🌭 = \"hot dog\"")
PlaygroundPage.current.liveView = view
//#-end-hidden-code
