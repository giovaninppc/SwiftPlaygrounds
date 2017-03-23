//: [Previous](@previous)

//:## Como Brincar do zero no Playground
//:### Por Giovani NP. sofrendo aqui pra pensar em alguma coisa pro WWDC

/*:
Primeiro ponto Legal - Interatividade, o Playground eh so sobre isso e é muito legal de usar na real
 
Essa é uma das referências que eu usei pra aprender essas coisas [referencia](http://www.techotopia.com/index.php/An_Introduction_to_Swift_Playgrounds)

*/

import UIKit
import PlaygroundSupport
var str = "Hello, playground"

/*:
Primeira Coisa, o liveView do Playgroud funciona tipo um SceneView do Unity (pra quem ja mexeu em Unity)
 Ou seja, ele mostra apenas uma cena de cada vez, e cada pagina tem sua cena

 Mas a gente tem que colocar coisas nessa cena do LiveView para que ela passe a mostrar alguma coisa de verdade pra gente, e pra isso a gente usa as coisas disponiveis no UIKit, mas principalmente, o UIView
 */

var background = UIView(frame: CGRect(x: 0,y: 0,width: 200,height: 200))

/*:
 Aqui a gente criou um retangulo - no momento incolor, vamos colocar uma cor e adicionar a nossa liveView
 */

PlaygroundPage.current.liveView = background
background.backgroundColor = UIColor.red
PlaygroundPage.current
/*:
 Real galera que eu tive algumas dificuldades com o XCode mostrar o liveView direito pra mim... Sergiao me ajudou, e foi so reiniciar o computador. Se nao estiver aparecendo pra você, tenta reiniciar, ou entao usar a *pre-visualizacao* que tem no XCode.
 
 Naquela barra cinza ao lado do código ->
 
 quando você digita uma variável ou coisa assim, é la que mostra o valor dela
 
 e também quando vc faz alguma coisa que deveria aparecer na sua liveView, ou quando vc cria um quadrado... qualquer coisa na real
 
 então vai la, e clica no olhinho ou no quadradinho ao lado dele que vai mostrar se vc criou realmente aquilo que vc queria
 */
//: [Next](@next)
