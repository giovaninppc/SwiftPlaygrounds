//: [Previous](@previous)
import UIKit
import PlaygroundSupport
/*:
 ## Matemágica 🧙🏽‍♀️

 Já vimos que `UIViews` são definidas por propriedades numéricas:

 - x
 - y
 - width
 - height
 - backgroundColor
 - roationAngle
 - ...

 Vamos dar uma pausa nas views, e um bizu na matemática:

 ### Interpolações

 Imagine que temos 2 pontos num gráfico

 ![](base-graph.png)

 Uma interpolação é escrever uma função que una esses 2 (ou n) pontos de alguma forma.

 ![](line-interpolation.png)

 E essa interpolação pode ser feita por qualquer função (polinômio, log, exponencial...)

 ![](multiple-interpolation.png)

 _Por que isso é importante para a gente?_

 Porque conseguimos definir um comportamento contínuo usando apenas um estado inicial e um final!

 _O quê?_

 Calmô. Vou explicar

 Imagine que temos uma view, na posição (0,0), e queremos movê-la até a posição (300,300) a uma velocidade (v).
 O que você poderia fazer é calcular qual seria a posição de cada pixel a cada frame de atualização da tela, e atualizar a posição da sua view _frame-a-frame_.

 O que seria PÉSSIMO de se fazer, por isso os frameworks de animação usam de interpolações para resolver esse cálculo pra gente! Então precisamos apenas dos estados iniciais e finais para animar alguma coisa!

 ![](animation.png)

 Como uma interpolação nos dá uma função _f(x) = y_, ou nesse caso _f(t) = (x,y)_ podemos calcular o valor de qualquer ponto no tempo dentro da animação que queremos.

 E o `UIKit` já nos provê com um framework de animação baseado exatamente nisso.
 */
let screen = UIView(frame: .init(x: 0, y: 0, width: 500, height: 800))

let redSquare = UIView(frame: .init(x: 0, y: 0, width: 50, height: 50))
redSquare.backgroundColor = .red

screen.addSubview(redSquare)

// *** ANIMAÇÃO ***
UIView.animate(withDuration: 3.0) {
    redSquare.center = .init(x: 300, y: 300)
}

PlaygroundPage.current.liveView = screen

//: [Next](@next)
