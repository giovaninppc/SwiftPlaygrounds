//: [Previous](@previous)
//: # Estruturas Básicas
//:
//: ## Comandos de Loop
import Foundation
/*:
 O primeiro comando de laço que vamos ver é o **while** e seu irmão gêmeo  **repeat-while**
 */
var x: Int = 0
while(x > 5){
    x += 1
}
x

repeat{
    x -= 1
}while(x>0)
x

/*:
 A diferença é que o repeat-while, é executado sempre pelo menos uma vez - já que a condição é verificada apenas ao final do loop*/
/*:
 
 E o outro comando, amiguinho de todos é o **for**.
 
 O for itera uma variável, ou sobre um range, ou sobre um conjunto (Arrays, Sets, Vetores...)
 */
//Iterando sobre um range (0,1,2,3,4,5,6,7,8,9,10)
for i in 0...10{
    x = i
}

//Iterando sobre um range aberto (0,1,2,3,4)
for i in 0..<5{
    x = i*i
}

//Iterando sobre um range aberto (4,3,2,1,0)
for i in (0..<5).reversed(){
    x = i*i
}

//Iterando sobre um conjunto
let palavras = ["oi", "olá", "alor", "olar"]
for palavra in palavras{
    print(palavra)
}


//: [Next](@next)


//#-hidden-code
import PlaygroundSupport
let view = SimpleViewController()
view.addLabel(text: "primeiro x = 5\nsegundo x = -1\nterceiro x = 10\nquarto x = 16\nquinto x = 0")
PlaygroundPage.current.liveView = view
//#-end-hidden-code
