//: [Previous](@previous)

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
    
    //3. Criar novas views dentro da sua tela
    func createInternalView(){
        //Criando View
        let newView = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        newView.backgroundColor = .orange
        
        //Adicionando a nossa tela - subview da view principal
        self.view.addSubview(newView)
    }
}

//2. Adicionar sua nova view ao live view do Playground
let view = viewController()
view.createInternalView()
PlaygroundPage.current.liveView = view

//: [Next](@next)
