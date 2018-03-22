//: [Previous](@previous)
//: # Ball Smash
var points: Int = 0
func updateScoreLabel(){}
/*:
 O circulo e a tela - veja que estão em classes diferentes, precisam de uma forma de se comunicar
 
 o que vamos fazer é um protocolo para isso.
 
 *Um protocolo?* É um protocolo.
 
 *Mas como assim?* Um protocolo swift, é o mesmo que um contrato.
 
 Quando uma classe diz que vai implementar um protocolo, ela diz que todos os métodos e variáveis que forem descritos no protocolo, ela VAI TER.
 
 *E porque isso nos ajuda?*
 Porque podemos criar um protocolo de Observador da nossa bolinha (ou um delegate), que quando for tocada, a bolinha vai avisar seu observador desse evento.
 
 Aqui embaixo, está o código do Protocolo que vamos criar. Ele é bem simples, porque precisamos de uma coisa só - avisar a tela que a bolinha foi tocada.
 Se houvesse mais necessidades, nosso protocolo seria maior
 */
protocol GlowingCircleObserver {
    func circleTapped()
}
/*:
 Copie e cole esse protocolo no arquivo Sources/GlowingCircle - fora da classe!
 
 E agora precisamos que nossa classe da ViewController implemente esse protocolo - vamos fazer uma extensão dessa classe.
 
 Crie um extension: GameCircleViewController{} e dentro desta extensão, coloque o método a seguir:
 */
/// Se um circulo foi clicado
/// aumenta um na pontuação do jogador e atualiza o label
//
func circleTapped(){
    points += 1
    updateScoreLabel()
}

/*:
 Agora o que falta fazermos é, em cada cículo criar uma variável que aponte para seu observador.
 um observer, que seja do tipo do seu protocolo.
 
 E na viewController, quando criado, vamos colocar a propria view como observadora desse círculo.
 
 - Descomente as linas 67, 68, 69 do GameCircleViewController - para se adicionar como observador de cada bolinha
 - Descomente as linhas 6 e 33 do Glowing Circle - para avisar a view quando uma bolinha for clicada
 */

/*:
 Para deixar o jogo mais legal, vamos iminuir um ponto caso uma bolinha nasça no jogo.
 
 Descomente as linhas 72 e 73 do GameCircleViewController*/
import PlaygroundSupport
PlaygroundPage.current.liveView = GameCircleViewController()
//: [Next](@next)
