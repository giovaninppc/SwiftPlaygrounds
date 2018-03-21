import UIKit

public class WWDCViewController: UIViewController {
    
    var image: UIImageView = UIImageView()
    var imageArray: [UIImage] = [UIImage(named: "WWDC01")!, UIImage(named: "WWDC02.jpg")!, UIImage(named:"WWDC03.jpeg")!,
                                 UIImage(named: "WWDC04.jpg")!, UIImage(named: "WWDC05.jpg")!]
    var currentImage: Int = 0
    
    /// Carregar View - override no lifecicle dessa view
    /// o metodo loadView() será chamado sempre que essa view for carregada
    /// qualquer alteração aqui será feita antes da view apareceralteração
    ///
    override public func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        //Adicionar Imagens
        image = UIImageView(image: imageArray[0], highlightedImage: imageArray[0])
        image.frame = CGRect(x: 0, y: 0, width: 590, height: 800)
        image.contentMode = .scaleAspectFill
        self.view.addSubview(image)
        
        //Adicionar toque na tela
        let touch = UITapGestureRecognizer(target: self, action: #selector(tapHandler))
        self.view.addGestureRecognizer(touch)
    }
    
    /// Handles the tap
    /// Change the current image
    ///
    @objc func tapHandler(){
        currentImage += 1
        currentImage = currentImage % (imageArray.count)
        image.image = imageArray[currentImage]
    }
    
}
