//: [Previous](@previous)
//: # Swift
//:
//: ## Introdução
//:
//:Swift é a linguagem de programação que está se tornando o padrão
//:para desenvolvimento das plataformas iOS, watchOS, tvOS e OS X; em
//: substituição a Objective-C. Esta linguagem foi apresentada a comunidade de
//: desenvolvimento em 2014 durante o
//: [Apple WWDC](https://developer.apple.com/videos/play/wwdc2014/101/) (*Apple Worldwide developer conference*) - ou seja, ela é muito novinha
//:
//:Swift é uma linguagem multi-paradigma, ou seja, que trabalha com
//:características de várias paradigmas de programação como: estruturada,
//:orientada o objetos, orientada a protocolos e funcional.
//:
//: E é claro que a primeira coisa que vamos fazer é o Hello World!
//: Se você está no Mac - esse print vai aparecer no seu console - geralmente na parte debaixo da tela. Se você está no iPad (Oh oh...) ele nao vai aparecer... Porque o Playgrounds do iPad nao apresenta um console.

print("Hello, World!")


//: [Next](@next)

//#-hidden-code
import PlaygroundSupport
let view = SimpleViewController()
view.addLabel(text: "Hello World")
PlaygroundPage.current.liveView = view
//#-end-hidden-code
