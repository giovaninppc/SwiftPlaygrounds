import Foundation
import UIKit

public class GlowCircleViewController : UIViewController {
    
    var timer: Timer?
    
    /// Carregar View - override no lifecicle dessa view
    /// o metodo loadView() será chamado sempre que essa view for carregada
    /// qualquer alteração aqui será feita antes da view apareceralteração
    ///
    override public func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        //Adicionar toque na tela
        let touch = UITapGestureRecognizer(target: self, action: #selector(tapHandler))
        self.view.addGestureRecognizer(touch)
        
        //Adicionar textos
        addLabel()
        
        //Crar timer para imagens automaticas ao fundo
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(createRandomCircle), userInfo: nil, repeats: true)
    }

    /// Adicionar os textos da tela inicial
    ///
    func addLabel(){
        let label = UILabel(frame: CGRect(x: 20, y: 20, width: 500, height: 100))
        label.text = "Workshop Swift Playgrounds"
        label.font = UIFont(name: "System", size: 30)
        let subtitle = UILabel(frame: CGRect(x: 20, y: 40, width: 500, height: 100))
        subtitle.text = "WWDC 2018"
        subtitle.font = UIFont(name: "System", size: 20)
        subtitle.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        let name = UILabel(frame: CGRect(x: 20, y: 60, width: 500, height: 100))
        name.text = "Giovani Nascimento Pereira"
        name.font = UIFont(name: "SF", size: 15)
        name.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        let app = UILabel(frame: CGRect(x: 20, y: 80, width: 500, height: 100))
        app.text = "- Apple Campus Rep Unicamp"
        app.font = UIFont(name: "SF", size: 15)
        app.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        self.view.addSubview(label)
        self.view.addSubview(subtitle)
        self.view.addSubview(name)
        self.view.addSubview(app)
    }

    /// Tratar o clique na tela
    /// esse metodo foi configurado no TapHandler, será chamado toda vez que houver um toque na tela
    ///
    @objc func tapHandler(){
        let X = arc4random_uniform(UInt32(self.view.frame.maxX))
        let Y = arc4random_uniform(UInt32(self.view.frame.maxY))
        let size = arc4random_uniform(100)
        
        self.view.addSubview(GlowingCircle(frame: CGRect(x: CGFloat(X), y: CGFloat(Y), width: CGFloat(size), height: CGFloat(size)), color: UIColor.red))
    }

    /// Cria circulos aleatorios na tela
    ///
    @objc func createRandomCircle(){
        //Define a posicao do circulo - arc4random é um metodo de numero aleatorio entre 0 - <parametro>
        let X = arc4random_uniform(UInt32(self.view.frame.maxX))
        let Y = arc4random_uniform(UInt32(self.view.frame.maxY))
        let size = arc4random_uniform(100)
        
        //Adiciona uma nova view do tipo Glowing Circle a tela
        self.view.addSubview(GlowingCircle(frame: CGRect(x: CGFloat(X), y: CGFloat(Y), width: CGFloat(size), height: CGFloat(size)), color: RandomColor.randomColor()))
    }
}
