//: [Previous](@previous)
import PlaygroundSupport
import UIKit
/*:
 ## Usando componentes de verdade
 Então vimos como criar uma view, como posicionar ela na tela.
 Mas quando estamos criando uma tela de uma aplicação de verdade, não precisamos definir uma view nova para cada coisa,
 Podemos usar views já existentes (UILabel - que renderiza textos, UIButton - que renderiza botões...),
 criar views customizadas,
 e posicioná-las na tela!
 */
//: Nossa tela de fundo (de praxe já)
// Altere as dimensões da tela e veja como ela se comporta!
let screen = UIView(frame: .init(x: 0, y: 0, width: 500, height: 800))
//: Vamos criar váios componentes pra por na tela, e configurá-los com as propriedades que queremos
let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "Meu personagem"
    label.textAlignment = .center
    label.font = UIFont.boldSystemFont(ofSize: 24.0)
    return label
}()

let profileCard: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor.gray.withAlphaComponent(0.3)
    view.layer.cornerRadius = 20.0
    return view
}()

let profileImage: UIImageView = {
    let imageView = UIImageView()
    imageView.backgroundColor = .white
    imageView.layer.cornerRadius = 25.0
    imageView.image = #imageLiteral(resourceName: "patrick.jpeg")
    imageView.clipsToBounds = true
    return imageView
}()

let profileNameLabel: UILabel = {
    let label = UILabel()
    label.text = "Mummy Patrick Star"
    label.textAlignment = .left
    label.font = UIFont.systemFont(ofSize: 18.0)
    return label
}()

let interestsHeaderLabel: UILabel = {
    let label = UILabel()
    label.text = "Interesses"
    label.textAlignment = .left
    label.font = UIFont.boldSystemFont(ofSize: 18.0)
    return label
}()

let interestsLabel: UILabel = {
    let label = UILabel()
    label.text = "• Bob Esponja\n• Caçar água-viva\n• Hambúrguer de Siri\n• Múmias em formato de estrela\n• Rochas e Túmulos\n• Pirâmides subaquáticas"
    label.textAlignment = .left
    label.numberOfLines = 0
    label.font = UIFont.systemFont(ofSize: 16.0)
    return label
}()

let habilitiesHeaderLabel: UILabel = {
    let label = UILabel()
    label.text = "Habilidades"
    label.textAlignment = .left
    label.font = UIFont.boldSystemFont(ofSize: 18.0)
    return label
}()

let habilitiesLabel: UILabel = {
    let label = UILabel()
    label.text = "• Dormir muito\n• Atormentar o lula molusco\n• Dormir embaixo de rochas\n• Caçar água vivas\n• Dormir\n• Comer\n• Dormir"
    label.textAlignment = .left
    label.numberOfLines = 0
    label.font = UIFont.systemFont(ofSize: 16.0)
    return label
}()
//: Adicioná-los na hierarquia da tela
screen.addSubview(titleLabel)
screen.addSubview(profileCard)

profileCard.addSubview(profileImage)
profileCard.addSubview(profileNameLabel)

screen.addSubview(interestsHeaderLabel)
screen.addSubview(interestsLabel)
screen.addSubview(habilitiesHeaderLabel)
screen.addSubview(habilitiesLabel)
//: E posicioná-los de acordo com nossas especificações de Design
titleLabel.translatesAutoresizingMaskIntoConstraints = false
titleLabel.centerXAnchor.constraint(equalTo: screen.centerXAnchor).isActive = true
titleLabel.topAnchor.constraint(equalTo: screen.topAnchor, constant: 20.0).isActive = true
titleLabel.leadingAnchor.constraint(equalTo: screen.leadingAnchor).isActive = true
titleLabel.trailingAnchor.constraint(equalTo: screen.trailingAnchor).isActive = true

profileCard.translatesAutoresizingMaskIntoConstraints = false
profileCard.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40.0).isActive = true
profileCard.leadingAnchor.constraint(equalTo: screen.leadingAnchor, constant: 20.0).isActive = true
profileCard.trailingAnchor.constraint(equalTo: screen.trailingAnchor, constant: -20.0).isActive = true

profileImage.translatesAutoresizingMaskIntoConstraints = false
profileImage.topAnchor.constraint(equalTo: profileCard.topAnchor, constant: 16.0).isActive = true
profileImage.leadingAnchor.constraint(equalTo: profileCard.leadingAnchor, constant: 16.0).isActive = true
profileImage.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
profileImage.widthAnchor.constraint(equalToConstant: 50.0).isActive = true
profileImage.bottomAnchor.constraint(equalTo: profileCard.bottomAnchor, constant: -16.0).isActive = true

profileNameLabel.translatesAutoresizingMaskIntoConstraints = false
profileNameLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 16.0).isActive = true
profileNameLabel.trailingAnchor.constraint(equalTo: profileCard.trailingAnchor, constant: -16.0).isActive = true
profileNameLabel.centerYAnchor.constraint(equalTo: profileImage.centerYAnchor).isActive = true

interestsHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
interestsHeaderLabel.topAnchor.constraint(equalTo: profileCard.bottomAnchor, constant: 30.0).isActive = true
interestsHeaderLabel.leadingAnchor.constraint(equalTo: screen.leadingAnchor, constant: 16.0).isActive = true

interestsLabel.translatesAutoresizingMaskIntoConstraints = false
interestsLabel.topAnchor.constraint(equalTo: interestsHeaderLabel.bottomAnchor, constant: 20.0).isActive = true
interestsLabel.leadingAnchor.constraint(equalTo: screen.leadingAnchor, constant: 16.0).isActive = true

habilitiesHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
habilitiesHeaderLabel.topAnchor.constraint(equalTo: interestsLabel.bottomAnchor, constant: 30.0).isActive = true
habilitiesHeaderLabel.leadingAnchor.constraint(equalTo: screen.leadingAnchor, constant: 16.0).isActive = true

habilitiesLabel.translatesAutoresizingMaskIntoConstraints = false
habilitiesLabel.topAnchor.constraint(equalTo: habilitiesHeaderLabel.bottomAnchor, constant: 20.0).isActive = true
habilitiesLabel.leadingAnchor.constraint(equalTo: screen.leadingAnchor, constant: 16.0).isActive = true
habilitiesLabel.bottomAnchor.constraint(lessThanOrEqualTo: screen.bottomAnchor, constant: -20.0).isActive = true
//: E finalmente, adicionar na cena para visualização
screen.layoutIfNeeded()
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = screen
//: [Next](@next)
