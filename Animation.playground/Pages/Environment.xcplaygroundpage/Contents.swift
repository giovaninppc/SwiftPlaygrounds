import PlaygroundSupport
import UIKit
//: ## Views + Animate
//: Vamos criar um ambiente simples para testarmos animações
//: Aqui, o SquareView retorna uma view com uma nova view cinza dentro
let view = SquareView(frame: .init(x: 0, y: 0, width: 500, height: 800))
let square = view.square
//: Aqui criamos as animações da nossa view
let animation: () -> Void = {
    square.transform = CGAffineTransform(scaleX: 2, y: 2)
}
//: Vamos colocar em options [.repeat, .autoreverse], as animation options dão uma gama de funções comumento utilizadas em animações pra que a gente possa usar de maneira simples
UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations: animation, completion: nil)
//: E adicionar na tela para visualização
PlaygroundPage.current.liveView = view
//: [Next](@next)
