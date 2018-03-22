import Foundation
import UIKit

public class viewController: UIViewController{
    //1. Override de Metodos - participar do Lifecicle
    override public func loadView() {
        self.view = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        // Trocar cor (.black, .blue, .red...)
        self.view.backgroundColor = .green
        
        
        // A Parte: Adicionar um texto
        let label = UILabel(frame: CGRect(x: 20, y: 600, width: 800, height: 100))
        label.text = "Clique na tela multiplas vezes"
        self.view.addSubview(label)
        
        self.configurateTouch()
    }
    
    //3. Criar novas views dentro da sua tela
    func createInternalView(){
        //Criando View
        let newView = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        newView.backgroundColor = .orange
        
        //Adicionando a nossa tela - subview da view principal
        self.view.addSubview(newView)
    }
    
    //4. Adicionar toque na sua tela - e outras formas de interacao
    func configurateTouch(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapHandler(_:)))
        self.view.addGestureRecognizer(tap)
    }
    
    //5. Criar metodo que trata quando um toque acontecer na tela
    var counter: Int = 0
    @objc func tapHandler(_ tap: UITapGestureRecognizer){
        //Criando View - agora customizada
        let newView = roundView(frame: CGRect(origin: tap.location(ofTouch: 0, in: self.view), size: CGSize(width: 100, height: 100)), color: UIColor(red: CGFloat((3*counter%255)/255), green: CGFloat((1*counter)%255)/255, blue: CGFloat((2*counter)%255)/255, alpha: 1))
        counter += 5
        //Adicionando a nossa tela - subview da view principal
        self.view.addSubview(newView)
    }
}
