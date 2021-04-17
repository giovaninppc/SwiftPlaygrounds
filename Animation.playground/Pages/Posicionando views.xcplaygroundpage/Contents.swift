//: [Previous](@previous)
/*:
## Posicionando Views

 PRONTO! Agora você consegue fazer o que quiser, criando views e posicionando elas na tela ♥️.

 Mas..... posicionar tudo pelo frame parece muita ousadia. Ainda mais, usando posições absolutas, não estamos cobrindo todas as variações de tela e tamanhos possíveis.
 Por isso o UIKit nos dá outra ferramenta: Constraints.

 ### Constraints

 Constraints permitem posicionar views na tela com dimensões, posições e tamanhos relativos à outras views!
 E a base da sua tela também é uma view! 😮.
 */

import UIKit
import PlaygroundSupport
//: Aqui, como estamos num Playground, e não num dispositivo iOS, vamos simular a nossa tela como uma view em branco
let screen = UIView(frame: .init(x: 0, y: 0, width: 500, height: 800))
//: Vamos criar nosso quadrado e pintá-lo de vermelho
let redSquare = UIView()
redSquare.backgroundColor = .red
//: Adicioná-lo na hierarquia da tela
screen.addSubview(redSquare)
//: E posicioná-lo no centro da tela usando constraints
redSquare.translatesAutoresizingMaskIntoConstraints = false
redSquare.centerXAnchor.constraint(equalTo: screen.centerXAnchor).isActive = true
redSquare.centerYAnchor.constraint(equalTo: screen.centerYAnchor).isActive = true
redSquare.widthAnchor.constraint(equalToConstant: 50).isActive = true
redSquare.heightAnchor.constraint(equalToConstant: 50).isActive = true
//: Adicionar na cena para visualização
screen.layoutIfNeeded()
PlaygroundPage.current.needsIndefiniteExecution = true

PlaygroundPage.current.liveView = screen
//: [Next](@next)
