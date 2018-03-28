import UIKit

public class UnusualMissionStory: UIViewController{
    
    var imageView: UIImageView?
    var tapGesture: UITapGestureRecognizer?
    var timer: Timer?
    var counter: Int = 0
    var player = Player()
    
    //The stories
    let story: [UIImage] = [UIImage(named: "01")!,
                            UIImage(named: "02")!,
                            UIImage(named: "03")!,
                            UIImage(named: "04")!,
                            UIImage(named: "05")!,
                            UIImage(named: "06")!,
                            UIImage(named: "07")!,
                            UIImage(named:"08")!]
    
    override public func loadView() {
        self.view = UIView(frame: CGRect(x:0 , y:0, width: 0, height: 0))
        self.view.backgroundColor = .white
        
        //Add image view to story
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 380 , height: 630))
        imageView?.contentMode = .scaleAspectFit
        self.view.addSubview(imageView!)
        
        //Add touch to play story
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(startStory))
        self.view.addGestureRecognizer(self.tapGesture!)
        
    }
    
    /// Start showing the story images
    @objc func startStory(){
        
        //Start the story
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(continueStory), userInfo: nil, repeats: true)
        
        self.view.removeGestureRecognizer(self.tapGesture!)
        
        //Load first Image
        self.imageView!.image = story[0]
        counter += 1
        player.playFire()
        
    }
    
    /// Keep showing the story images
    @objc func continueStory(){
        if counter < story.count{
            self.imageView!.image = story[counter]
        }
        else if counter == story.count{
            let view = UIView(frame: CGRect(x:0, y:0, width: 2000, height: 2000))
            let label = UILabel(frame: CGRect(x:20, y:100, width:500, height:200))
            label.text = "Save our Astronaut!\n(Go to the next page)"
            label.numberOfLines = 2
            label.textColor = .clear
            view.backgroundColor = .clear
            self.view.addSubview(view)
            self.view.addSubview(label)
            UIView.transition(with: view, duration: 2, options: .transitionCrossDissolve, animations: {
                view.backgroundColor = UIColor.black.withAlphaComponent(0.7)
            }, completion: { (ok) in
                label.textColor = .white
            })
        }
        else {
            timer?.invalidate()
        }
        
        switch counter {
        case 2:
            player.playConnect()
        case 3:
            player.playRadio()
        case 5:
            player.playRadio()
        case 7:
            player.playStatic()
        default:
            print("Done")
        }
        
        counter += 1
    }
}
