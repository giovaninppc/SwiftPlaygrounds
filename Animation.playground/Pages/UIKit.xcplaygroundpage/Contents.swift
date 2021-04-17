//: [Previous](@previous)
/*:
  ## UIKit

 O `UIKit` funciona todo em cima de um objeto conhecido como `UIView`, então tudo que é renderizado na tela extende a implementação de uma `UIView`.

 - `UIButton`
 - `UISlider`
 - `UITableView`
 - ...

 >  Todas as classes base do `UIKit` começam com `UI` 😉

 ![](view-frame.png)

 > No `UIKit` as coordenadas começam no canto superior direito (0, 0) e crescem nas outras direções.

 E uma view é definida por suas propriedades, posição (x, y) e tamanho (w, h).

 A partir daí, não precisamos nos preocupar com escrever o valor de cada pixel, o `UIKit` sabe converter as views na informação necessária para a tela renderizar!

 ### Bora criar uma `UIView`!
 */

import UIKit
import PlaygroundSupport

let view = UIView(frame: .init(x: 0, y: 0, width: 500, height: 800))
PlaygroundPage.current.liveView = view

//: [Next](@next)
