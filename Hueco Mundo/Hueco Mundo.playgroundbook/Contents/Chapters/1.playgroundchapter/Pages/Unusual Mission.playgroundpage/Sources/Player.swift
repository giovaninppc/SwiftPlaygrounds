import AVFoundation

public class Player{
    
    var radio: AVAudioPlayer?
    var fire: AVAudioPlayer?
    var radio_static: AVAudioPlayer?
    var connect: AVAudioPlayer?
    
    public init(){
        radio = try! AVAudioPlayer(contentsOf: Bundle.main.url(forResource: "radio", withExtension: "mp3")!)
        radio?.prepareToPlay()
        
        fire = try! AVAudioPlayer(contentsOf: Bundle.main.url(forResource: "blowtorch", withExtension: "mp3")!)
        fire?.prepareToPlay()
        
        radio_static = try! AVAudioPlayer(contentsOf: Bundle.main.url(forResource: "radio_static", withExtension: "mp3")!)
        radio_static?.prepareToPlay()
        
        connect = try! AVAudioPlayer(contentsOf: Bundle.main.url(forResource: "connect", withExtension: "mp3")!)
        connect?.prepareToPlay()
    }
    
    public func playRadio(){
        radio?.play()
    }
    public func stopRadio(){
        radio?.stop()
    }
    
    public func playFire(){
        fire?.play()
    }
    public func stopFire(){
        fire?.stop()
    }
    
    public func playConnect(){
        connect?.play()
    }
    public func stopConnect(){
        connect?.stop()
    }
    
    public func playStatic(){
        radio_static?.play()
    }
    public func stopStatic(){
        radio_static?.stop()
    }
    
}
