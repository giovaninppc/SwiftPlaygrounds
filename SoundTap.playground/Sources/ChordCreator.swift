import PlaygroundSupport
import AudioToolbox

let sceneWidth  : Int = 500
let sceneHeight : Int = 500
let majorChord      : [Int] = [4, 3, 5]
let minorChord      : [Int] = [3, 4, 5]
let mixolydianChord : [Int] = [3, 3, 6]

let majorScale       : [Int] = [2, 2, 2, 1, 2, 2, 2, 1]
let minorScale       : [Int] = [2, 2, 2, 1, 2, 2, 2, 1]
let mixolydianScale  : [Int] = [2, 2, 2, 1, 2, 2, 2, 1]

/// This function creates and executes Arpeggio
///
/// - Parameters:
///   - x: the relative value for the arpeggio first note frequency
///   - y: the relative value for the arpeggio speed
///   - numberOfNotes: the number of notes on the Arpeggio
///   - playMode: the selected musical mode to play
public func playArpeggio (x: Double, y: Double, _ numberOfNotes:Int, _ playMode: Int){
    
    //Music Variables
    //Creating MusicSequence
    
    var musicPlayer:MusicPlayer? = nil
    var player = NewMusicPlayer(&musicPlayer)
    
    let pitch = 500 - y
    
    player = MusicPlayerSetTime(musicPlayer!, 0.0)
    player = MusicPlayerSetSequence(musicPlayer!, createNoteArpeggio(initialNote: UInt8((90.0/Double(sceneHeight)) * pitch + 25)
        , noteSpeed: Float32( (500 - x) * (1.0/Double(sceneWidth)) + 0.1), numberOfNotes: numberOfNotes, mode: playMode))
    player = MusicPlayerStart(musicPlayer!)
}

/// This function ceates and executes an Scale
///
/// - Parameters:
///   - x: the relative value for the arpeggio first note frequency
///   - y: the relative value for the arpeggio speed
///   - numberOfNotes: the number of note on the scale to be played
///   - playMode: the ScaleMode to be Played
public func playScale (x: Double, y: Double, _ numberOfNotes:Int, _ playMode: Int){
    
    var musicPlayer:MusicPlayer? = nil
    var player = NewMusicPlayer(&musicPlayer)
    
    let pitch = 500 - y
    
    player = MusicPlayerSetTime(musicPlayer!, 0.0)
    player = MusicPlayerSetSequence(musicPlayer!, createNoteArpeggio(initialNote: UInt8((90.0/Double(sceneHeight)) * pitch + 25)
        , noteSpeed: Float32( (500 - x) * (1.0/Double(sceneWidth)) + 0.1), numberOfNotes: numberOfNotes, mode: playMode))
    player = MusicPlayerStart(musicPlayer!)
    
}

/// This function creates a new MusicSequence, and returns it
/// it is created as an Arpeggion on a major scale with seven notes
/// (4 notes up and 3 down the scale)
///
/// - Parameters:
///   - initialNote: The MIDI value for the first note of the Arpeggio
///   - speed: The duration of the notes that are going to be played
/// - Returns: The mounted MusicSequence ready to be played
func createNoteArpeggio(initialNote:UInt8, noteSpeed speed: Float32, numberOfNotes:Int, mode:Int) -> MusicSequence?{
    
    var sequence:MusicSequence? = nil
    var musicSequence = NewMusicSequence(&sequence)
    var modeArray:[Int] = [0, 0, 0, 0, 0, 0, 0, 0]
    
    //Choosing Mode Array
    if mode == 0 {  //Major mode
        modeArray = majorChord
    }
    if mode == 1{  //MinorChord
        modeArray = minorChord
    }
    if mode == 2{
        modeArray = mixolydianChord
    }
    
    //Creating MusicTrack
    var track:MusicTrack? = nil
    var musicTrack = MusicSequenceNewTrack(sequence!, &track)
    
    var time = MusicTimeStamp(0.0)
    
    var note = MIDINoteMessage()
    var j = initialNote
    var k:UInt8 = 0
    
    //Creating an Arpeggio
    //Ascendent part
    for i in 0 ... (numberOfNotes - 1){
        if (i % 3) == 0{
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            j += UInt8(modeArray[0])
            k = UInt8(modeArray[0])
        }
        else if (i % 3) == 1{
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            j += UInt8(modeArray[1])
            k = UInt8(modeArray[1])
        }
        else if (i % 3) == 2{
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            j += UInt8(modeArray[2])
            k = UInt8(modeArray[2])
        }
    }
    j -= UInt8(k)
    //Descendent Part
    for a in 1 ... numberOfNotes{
        let i = numberOfNotes - a - 1
        if (i % 3) == 0{
            j -= UInt8(modeArray[0])
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
        }
        else if (i % 3) == 1{
            j -= UInt8(modeArray[1])
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            
        }
        else if (i % 3) == 2{
            j -= UInt8(modeArray[2])
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
        }
    }
    
    return sequence
}


func createNoteScale(initialNote:UInt8, noteSpeed speed: Float32, numberOfNotes:Int, mode:Int) -> MusicSequence?{
    
    var sequence:MusicSequence? = nil
    var musicSequence = NewMusicSequence(&sequence)
    var modeArray:[Int] = [0, 0, 0]
    
    //Choosing Mode Array
    if mode == 0 {  //Major mode
        modeArray = majorScale
    }
    if mode == 1{  //MinorChord
        modeArray = minorScale
    }
    if mode == 2{
        modeArray = mixolydianScale
    }
    
    //Creating MusicTrack
    var track:MusicTrack? = nil
    var musicTrack = MusicSequenceNewTrack(sequence!, &track)
    
    var time = MusicTimeStamp(0.0)
    
    var note = MIDINoteMessage()
    var j = initialNote
    var k:UInt8 = 0
    
    //Creating an Arpeggio
    //Ascendent part
    for i in 0 ... (numberOfNotes - 1){
        if (i % 8) == 0{
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            j += UInt8(modeArray[0])
            k = UInt8(modeArray[0])
        }
        else if (i % 8) == 1{
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            j += UInt8(modeArray[1])
            k = UInt8(modeArray[1])
        }
        else if (i % 8) == 2{
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            j += UInt8(modeArray[2])
            k = UInt8(modeArray[2])
        }
        else if (i % 8) == 3{
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            j += UInt8(modeArray[3])
            k = UInt8(modeArray[3])
        }
        else if (i % 8) == 4{
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            j += UInt8(modeArray[4])
            k = UInt8(modeArray[4])
        }
        else if (i % 8) == 5{
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            j += UInt8(modeArray[5])
            k = UInt8(modeArray[5])
        }
        else if (i % 8) == 6{
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            j += UInt8(modeArray[6])
            k = UInt8(modeArray[6])
        }
        else if (i % 8) == 7{
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            j += UInt8(modeArray[7])
            k = UInt8(modeArray[7])
        }
    }
    j -= UInt8(k)
    //Descendent Part
    for a in 1 ... numberOfNotes{
        let i = numberOfNotes - a - 1
        if (i % 8) == 0{
            j -= UInt8(modeArray[0])
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
        }
        else if (i % 8) == 1{
            j -= UInt8(modeArray[1])
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
            
        }
        else if (i % 8) == 2{
            j -= UInt8(modeArray[2])
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
        }
        else if (i % 8) == 3{
            j -= UInt8(modeArray[3])
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
        }
        else if (i % 8) == 4{
            j -= UInt8(modeArray[4])
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
        }
        else if (i % 8) == 5{
            j -= UInt8(modeArray[5])
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
        }
        else if (i % 8) == 6{
            j -= UInt8(modeArray[6])
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
        }
        else if (i % 8) == 7{
            j -= UInt8(modeArray[7])
            note = MIDINoteMessage(channel: 0,
                                   note: j,
                                   velocity: 200,
                                   releaseVelocity: 0,
                                   duration: speed)
            musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            time += Double(speed)
        }
    }
    
    return sequence
}

