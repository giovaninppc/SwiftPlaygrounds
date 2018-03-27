import Foundation
import UIKit

let thanks: [String] = ["Obrigado", "Thanks", "Gracias", "Terima kasih", "مهرباني", "dankie", "እናመሰግናለን", "дзякуй", "Salamat", "நன்றி", "谢谢", "grazie", "ありがとう", "ಧನ್ಯವಾದಗಳು", "Děkuji", "شکریہ", "Спасибі", "mulțumesc", "ขอบคุณ"]

let emoji: [String] = ["😃", "😁", "😬", "👍", "🐠", "🦑", "🇧🇷", "❤️", "🤯"]

public class RandomThanks{
    
    class func random() -> String{
        let random = arc4random_uniform(UInt32(thanks.count))
        return thanks[Int(random)]
    }
    
    class func randomEmoji() -> String{
        let random = arc4random_uniform(UInt32(emoji.count))
        return emoji[Int(random)]
    }
}
