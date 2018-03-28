import AVFoundation

public class Player{
    
    var player: AVAudioPlayer?
    
    public init(){
        player = try! AVAudioPlayer(contentsOf: Bundle.main.url(forResource: "Trap in Space", withExtension: "m4a")!)
        player?.prepareToPlay()
    }
    
    public func play(){
        player?.numberOfLoops = 0
        player?.volume = 0.5
        player?.play()
    }
    
    public func stop(){
        player?.stop()
    }
    
}
