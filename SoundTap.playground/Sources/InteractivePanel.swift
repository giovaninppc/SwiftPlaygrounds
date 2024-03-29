import UIKit
import PlaygroundSupport
import AudioToolbox


/// This Class is responsable for the creation of our beautiful and colorful interactive panel!
public class InteractivePanel {
    
    public var view:UIView?
    private var touchableView:UIView?
    private var image: UIImageView
    private var numberOfNotes: Int
    private var mode: Int
    private var play: String
    private var mySequence: [Int]
    
    /// Creates an instance of the Interactive Panel with the Standart number of notes on the Arpeggios
    public init() {
        
        numberOfNotes = 4
        mode = 0
        play = "arpeggio"
        mySequence = [0]
        
        view = UIView(frame: CGRect(origin: CGPoint(x:0,y:0), size: CGSize(width: sceneWidth, height: sceneHeight)))
        view?.backgroundColor = UIColor.white
        
        image = UIImageView(frame: CGRect(origin: CGPoint(x:0,y:0), size: CGSize(width: sceneWidth, height: sceneHeight)))
        image.image = UIImage(named: "BG")
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(InteractivePanel.tapView(tapGesture:)))
        
        touchableView = UIView(frame: CGRect(x: 0, y:0, width: (sceneWidth), height: (sceneHeight)))
        touchableView?.addGestureRecognizer(tap)
        touchableView?.clipsToBounds = true
        
        view?.addSubview(touchableView!)
        view?.addSubview(image)
        
    }
    
    public func setNumberOfNotes(_ numberOfNotesUp: Int){
        numberOfNotes = numberOfNotesUp
    }
    
    public func setMySequence(mySequenceOfNotes: [Int]){
        mySequence = mySequenceOfNotes
    }
    
    public func setToScales(){
        play = "scale"
    }
    
    public func setToArpeggios(){
        play = "arpeggio"
    }
    
    public func setToMySequences(){
        play = "sequence"
    }
    
    public func setPlayMode(_ playMode: String){
        if playMode == "major"{
            mode = 0
        }
        else if playMode == "minor"{
            mode = 1
        }
        else if playMode == "mixolydian"{
            mode = 2
        }
        else{
            print("INVALID MODE NAME")
        }
    }
    
    @objc
    func tapView(tapGesture:UITapGestureRecognizer) {
        let pos = tapGesture.location(in: touchableView)
        if play == "scale" {
            playScale(x: Double(pos.x), y: Double(pos.y), numberOfNotes, mode)}
        else if play == "arpeggio" {
            playArpeggio(x: Double(pos.x), y: Double(pos.y), numberOfNotes, mode)
        }
        else if play == "sequence"{
            playMySequence(x: Double(pos.x), y: Double(pos.y), mySequence)
        }
        else{
            print("Invalid Play Command!")
        }
    }
}
