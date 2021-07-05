//: [Previous](@previous)
/*:
## Uma tela qualquer

 Primeiro de tudo, como funciona uma tela? 🤔

 Uma tela é composta de vários pontos - pixels - que exibem uma determinada cor,
 (R, G, B) -> Geralmente representada com um valor de 0-255

 Por quê?

 Cada escala de cor ocupa 8bits de memória - 2^8 = 256 - então com 8 bits, podemos esolher valores de 0 a 255.
 E pra cada Pixel temos 3 canais de cor, então pra apenas 1 pixel da tela precisamos de 3*8 = 24 bits, ou 3 bytes.

 Uma tela, na verdade, lê uma posição de memória no seu computador (através dos cabos, vamos supor, uma entrada VGA),
 e atualiza os seus pixels com os valores que estão descritos lá.

 ![pixels numa tela](pixel-memory-map.png)

 >  Aqui eu usei uma memória com palavras de 8bits só pra simplificar a ideia, mas em geral as arquiteturas usam palavras de 32 ou 64 bits

 E esse processo se repete para CADA. PIXEL. DA. TELA. (Meu Jesus Cristinho...)

 Se você quiser escrever algo numa tela, é essencialmente isso que você deve fazer!

 Então... no meu monitor de 1080 x 720 = 777.600 pixels, que tenha uma frequência de 60Hz...
 eu preciso escrever 777.600 * 8 = 2.332.800 bytes 60 vezes por segundo...
 o que me dá 2.332.800 * 60 = 139.968.000 bytes por segundo! 😱

 Sim... e não.

 Essa é a ideia mais a nível de Hardware, mas apenas a ideia. Quando estamos programando algo de mais alto nível, ninguém chega no nível de escrever o valor individual de cada pixel na tela (apesar que se você qiser você meio que pode... só não recomendo).

 Existem frameworks que abstraem essa ideia e nos dão uma interface beeeeem melhor pra criar objetos e posicioná-los na tela. E claro, existem otimizações em cada sistema para essa operação em particular, mas a base da ideia é sempre a mesma

 No nosso caso, vamos dar uma olhada melhor no UIKit, que é o framework de UI da Apple, com interface para a linguagem Swift.

 > Vale lembrar também que enquanto nosso monitores operam na escala dos Hertz (Hz), nossos processadore atuais estão na escala do Giga Hertz (10^9 Hz) então eles são beeeem capazes de suprir a demanda as telas.
*/

//: [Next](@next)
