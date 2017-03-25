//: [Previous](@previous)
//:## Fazer Audio MIDI
/*:
 A biblioteca AudioToolbox é SEN-SA-CIO-NAL!
 
 Com poucos métodos é possível montar uma sequência de notas em MIDI e executar!!!
 
 Então a primeira coisa é importar a biblioteca do **AudioToolbox** e do PlaygroundSupport
 
 */
import AudioToolbox
import PlaygroundSupport
//: Primeiro temos que permitir que o Playground execute de forma assíncrona
PlaygroundPage.current.needsIndefiniteExecution = true
/*: Agora vamos criar nossa sequencia musical!
 
 Primeiro criamos uma variavel do tipo *MusicSequence* iniciando com uma squencia*/
var sequence:MusicSequence? = nil
var musicSequence = NewMusicSequence(&sequence)
/*: Com isso podemos criar nossa faixa de música, bem semelhante a criação da MusicSequence*/
var track:MusicTrack? = nil
var musicTrack = MusicSequenceNewTrack(sequence!, &track)
/*:Assim temos uma faixa sonora criada, com uma sequência de notas
 
 o problema é que a sequência de notas está vazia =[, então precisamos adicionar notas a nossa música!
 
 Pra isso precisamos de uma faixa de tempo, que é uma variável que marca a duração da nossa música, e é do tipo **MusicTimeStamp** */
var time = MusicTimeStamp(1.0)
/*: E antes de podermos executar, precisamos crair nosso **Music Player** */
var musicPlayer:MusicPlayer? = nil
var player = NewMusicPlayer(&musicPlayer)
/*: Aqui nós vamos criar uma sequência de notas, e fazer com que elas executem em loop! *(Por isso tem esse while infinito aqui)*
 
 para adicionar uma nosa a sua *track*! usamos o método **MIDINoteMessage** que gera uma nota da forma que quisermos!
 
 #### MIDINoteMessage
 
 * channel - O canal que será adicionada aquela nota
 * note -    A nota que será adicionada (É obrigatorioa mente um UInt8!)
 * velocity - A velocidade da Nota
 * releaseVelocity - O tempo de espera para tocar essa nota
 * duration - A duração da nota
 */
while(true){
/*: fazendo um arpejo, a parte ascendente*/
    for i:UInt8 in 1 ... 5{
            
        var j:UInt8 = 2 * i + 60
            
        var note = MIDINoteMessage(channel: 0,
                                    note: j,
                                    velocity: 64,
                                    releaseVelocity: 0,
                                    duration: 0.5)
            
        musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            
        time += 0.5
    }
/*: Fazendo um arpejo a parte descendente*/
    for i:UInt8 in 1 ... 3{
            
        var j:UInt8 = 70 - 2*i
            
        var note = MIDINoteMessage(channel: 0,
                                    note: j,
                                    velocity: 64,
                                    releaseVelocity: 0,
                                    duration: 0.5)
            
        musicTrack = MusicTrackNewMIDINoteEvent(track!, time, &note)
            
        time += 0.5
    }
/*: E finalmente colocamos nosso player com a música montada para rodar!*/
    player = MusicPlayerSetSequence(musicPlayer!, sequence)
    player = MusicPlayerStart(musicPlayer!)
/*: Esse sleep funciona só para dar um tempo antes de rodar novamente a montagem do arpejo e a execução da música*/
    sleep(1)
}

//: [Next](@next)