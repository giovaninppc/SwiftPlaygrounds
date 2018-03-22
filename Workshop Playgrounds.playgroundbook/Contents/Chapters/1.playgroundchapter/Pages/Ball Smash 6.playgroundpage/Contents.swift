//: [Previous](@previous)
//: # Ball Smash
//: ### Agora é sua vez!
/*:
 Use o que você já aprendeu sobre views, classes, liveviews, animações...
 Faça um restart para o jogo!
 
 As classes que você precisa editar estão aqui nessa página - foram tiradas dos arquivos fonte pra facilitar pra você - e permitir a edição nos iPads também.
 
 Ainda existe uma classe encapsulada que é a RandomColor,
 você pode chamar o método RandomColor.randomColor() se quiser.
 
 Existem várias formas de fazer um restart do jogo - pense:
 - Qual deles seria mais legal?
 
 E boa sorte!
 
 =]
 
 */
import Foundation
import UIKit

public class GameCircleViewController : UIViewController {
    
    var timer: Timer?
    var points: Int = 50
    var scoreLabel = UILabel()
    
    /// Carregar View - override no lifecicle dessa view
    /// o metodo loadView() será chamado sempre que essa view for carregada
    /// qualquer alteração aqui será feita antes da view apareceralteração
    ///
    override public func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        //Adicionar textos
        addLabel()
        
        //Create Score LabeladdLabel
        createScoreLabel()
        
        //Crar timer para imagens automaticas ao fundo
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(createRandomCircle), userInfo: nil, repeats: true)
    }
    
    /// Adicionar os textos da tela inicial
    ///
    func addLabel(){
        let label = UILabel(frame: CGRect(x: 20, y: 10, width: 500, height: 100))
        label.text = "Ball Smash!"
        label.font = UIFont(name: "System", size: 30)
        let subtitle = UILabel(frame: CGRect(x: 20, y: 30, width: 500, height: 100))
        subtitle.text = "clique nas bolas para ganhar pontos!"
        subtitle.font = UIFont(name: "System", size: 20)
        subtitle.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        self.view.addSubview(label)
        self.view.addSubview(subtitle)
    }
    
    /// Adiciona um texto de pontuação à tela
    ///
    func createScoreLabel(){
        scoreLabel = UILabel(frame: CGRect(x: 20, y: 500, width: 500, height: 100))
        scoreLabel.text = "Pontos: \(points)"
        self.view.addSubview(scoreLabel)
    }
    
    /// Atualiza a label com a pontuação do jogador
    ///
    func updateScoreLabel(){
        scoreLabel.text = "Pontos: \(points)"
        if points == 0{
            gameOver()
        }
    }
    
    /// Faz o fim do jogo acontecer
    ///
    func gameOver(){
        
        //Para de instanciar novas bolinhas
        self.timer!.invalidate()
        
        //Remove todas as bolinhas que tem na tela
        for view in self.view.subviews{
            view.removeFromSuperview()
        }
        
        //Pinta o fundo de preto
        self.view.backgroundColor = .black
        
        
        //Escreve GameOver na tela
        let gameOverLabel = UILabel(frame: CGRect(x: 10, y: 20, width: 500, height: 100))
        gameOverLabel.text = "GAME OVER ☠️"
        gameOverLabel.textColor = .white
        self.view.addSubview(gameOverLabel)
    }
    
    /// Cria circulos aleatorios na tela
    ///
    @objc func createRandomCircle(){
        //Define a posicao do circulo - arc4random é um metodo de numero aleatorio entre 0 - <parametro>
        let X = arc4random_uniform(UInt32(self.view.frame.maxX))
        let Y = arc4random_uniform(UInt32(self.view.frame.maxY))
        let size = arc4random_uniform(100)
        
        //Adiciona uma nova view do tipo Glowing Circle a tela - confugurando seu delegate
        let circle = GlowingCircle(frame: CGRect(x: CGFloat(X), y: CGFloat(Y), width: CGFloat(size), height: CGFloat(size)), color: RandomColor.randomColor())
        circle.observer = self
        self.view.addSubview(circle)
        
        //Remove um ponto do jogador e atualiza o label
        points -= 1
        updateScoreLabel()
    }
}

extension GameCircleViewController: GlowingCircleObserver{
    /// Se um circulo foi clicado
    /// aumenta um na pontuação do jogador e atualiza o label
    //
    func circleTapped(){
        points += 1
        updateScoreLabel()
    }
}

public class GlowingCircle : UIView{
    
    var observer: GlowingCircleObserver?
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /// Inicializador que nos usamos
    ///
    public init(frame: CGRect, color: UIColor) {
        super .init(frame: frame)
        
        //Deixando a View Arredondada
        self.layer.cornerRadius = self.bounds.size.width/2;
        self.layer.masksToBounds = true;
        
        //Definindo a cor
        self.backgroundColor = color
        
        //Colocando gesto de toque
        let tap = UITapGestureRecognizer(target: self, action: #selector(circleTapped))
        self.addGestureRecognizer(tap)
    }
    
    /// Método para clique no círculo
    ///
    @objc func circleTapped(){
        //Apara o circulo e avisa a view controller que isso aconteceu - observer
        observer!.circleTapped()
        self.removeFromSuperview()
    }
}

protocol GlowingCircleObserver {
    func circleTapped()
}

//Instanciando LiveView
import PlaygroundSupport
PlaygroundPage.current.liveView = GameCircleViewController()
