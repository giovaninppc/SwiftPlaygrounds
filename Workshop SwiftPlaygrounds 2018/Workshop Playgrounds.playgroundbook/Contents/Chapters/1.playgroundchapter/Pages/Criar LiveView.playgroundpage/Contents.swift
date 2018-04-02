//: [Previous](@previous)
//: # Playground Tutorial
//: ## Criar LiveView
import PlaygroundSupport
import Foundation
import UIKit

class viewController: UIViewController{
    //1. Override de Metodos - participar do Lifecicle
    override public func loadView() {
        self.view = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        // Trocar cor (.black, .blue, .red...)
        self.view.backgroundColor = .green
    }
}

//2. Adicionar sua nova view ao live view do Playground
// Instancia
let view = viewController()
//Adiciona la Live view
PlaygroundPage.current.liveView = view
//: [Next Page](@next)

