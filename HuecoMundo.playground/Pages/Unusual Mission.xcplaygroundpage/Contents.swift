//#-hidden-code
import UIKit
import PlaygroundSupport
//#-end-hidden-code
//: # Hueco Mundo
//: ## The little astronaut's mission on the Hollow World
//: ### Giovani Nascimento Pereira - WWDC18
/*:
 Hello!
 
 You are a member of the SEA - Space Exploration Academy.
 Your duty is to follow our most important exploration missions remotely, and provide support to our astronaut explorers.
 
 ![Logo of the Space Exploration Academy](SEA.png "Space Exploration Academy")
 
 The next mission you will be following is called *Hueco Mundo*.
 Our scanners found a strange planet, possibly inhabited, but with a very strange feature - the mass is too low, so probably we are talking about a hollow world.
 
 Our little friend, the astronaut, was invited to a recognizing mission on this planet. Since it's completely new, we don't know what to expect.
 
 You can follow the last images we have on him if you run the current code.
 
 */


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
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200 , height: 350))
        imageView?.backgroundColor = UIColor.blue
        
        
        
        imageView?.contentMode = .scaleAspectFit
        
        imageView?.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint = NSLayoutConstraint(item: imageView!, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 0)
        let bottomConstraint = NSLayoutConstraint(item: imageView!, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: 0)
        let leftConstraint = NSLayoutConstraint(item: imageView!, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 0)
         let rightConstraint = NSLayoutConstraint(item: imageView!, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 0)
        
        
        self.view.addSubview(imageView!)
        
        self.view.addConstraints([topConstraint,leftConstraint,rightConstraint,bottomConstraint])
        
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



PlaygroundPage.current.liveView = UnusualMissionStory()
/*:
 Something really wrong happened with the little astronaut!
 
 And you are the only one who can save him!
 */
//: [Let's save the Astronaut!](@next)
