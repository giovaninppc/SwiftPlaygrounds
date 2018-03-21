import Foundation
import UIKit

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

