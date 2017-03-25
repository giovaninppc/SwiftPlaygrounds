//: [Previous](@previous)

import Foundation
import AudioToolbox
import UIKit
import PlaygroundSupport


// Creating the sequence

PlaygroundPage.current.needsIndefiniteExecution = true

var sequence:MusicSequence? = nil
var musicSequence = NewMusicSequence(&sequence)

// Creating a track

var track:MusicTrack? = nil
var musicTrack = MusicSequenceNewTrack(sequence!, &track)

// Adding notes

var time = MusicTimeStamp(1.0)
/*for index:UInt8 in 60...200 {
    var note = MIDINoteMessage(channel: 0,
                               note: index,
                               velocity: 64,
                               releaseVelocity: 0,
                               duration: 1.0 )
    musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
    time += 1
}*/

for i:UInt8 in 1 ... 5{
    
    var j:UInt8 = i + 60
    
    var note = MIDINoteMessage(channel: 0,
                               note: j,
                               velocity: 64,
                               releaseVelocity: 0,
                               duration: 0.5)

    musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
    
    time += 0.5
}

for i:UInt8 in 1 ... 4{
    
    var j:UInt8 = 65 - i
    
    var note = MIDINoteMessage(channel: 0,
                               note: j,
                               velocity: 64,
                               releaseVelocity: 0,
                               duration: 0.5)
    
    musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
    
    time += 0.5
}

//musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)

// Creating a player

var musicPlayer:MusicPlayer? = nil
var player = NewMusicPlayer(&musicPlayer)

while(true){
    
    player = MusicPlayerSetSequence(musicPlayer!, sequence)
    player = MusicPlayerStart(musicPlayer!)
    
        for i:UInt8 in 1 ... 5{
            
            var j:UInt8 = i + 60
            
            var note = MIDINoteMessage(channel: 0,
                                       note: j,
                                       velocity: 64,
                                       releaseVelocity: 0,
                                       duration: 0.5)
            
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            
            time += 0.5
        }
        
        for i:UInt8 in 1 ... 3{
            
            var j:UInt8 = 65 - i
            
            var note = MIDINoteMessage(channel: 0,
                                       note: j,
                                       velocity: 64,
                                       releaseVelocity: 0,
                                       duration: 0.5)
            
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            
            time += 0.5
        }
    
    sleep(2)
}

//player = MusicPlayerSetSequence(musicPlayer!, sequence)
//player = MusicPlayerStart(musicPlayer!)


//: [Next](@next)
