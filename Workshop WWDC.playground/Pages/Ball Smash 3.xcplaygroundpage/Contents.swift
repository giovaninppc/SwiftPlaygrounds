//: [Previous](@previous)
/*:
 Agora precisamos contabilizar os pontos de algum jeito!
 
 Vamos fazer com que toda vez que o jogador clicar em uma das bolinhas seu contador de pontos aumente.
 
 Então precisamos, pra começar:
 - Um contador de pontos
    - Variável
    - Label (mostrar pro jogador)
 */
import PlaygroundSupport
import UIKit
/*:
 Aqui, colocamos a função que adicionamos a nossa view controller, que vai adicionar esse label ao jogo
 */
let points: Int = 0
var scoreLabel = UILabel()
func createScoreLabel(){
    scoreLabel = UILabel(frame: CGRect(x: 20, y: 600, width: 500, height: 100))
    scoreLabel.text = "Pontos: \(points)"
    //Ao final adicionamos como subview da view principal
}
/*:
 E aqui colocamos o código de atualizar o texto de pontuação.
 */
func updateScoreLabel(){
    scoreLabel.text = "Pontos: \(points)"
}
/*:
 Legal!
 Mas ainda falta modificar a pontuação do jogo conforme clicamos nas bolinhas*/
PlaygroundPage.current.liveView = GameCircleViewController()
//: [Next](@next)
