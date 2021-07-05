import UIKit

final public class Scene: UIView {
    let imageSize = CGSize(width: 150, height: 150)
    public lazy var logo: UIImageView = {
        let view = UIImageView(
            frame: .init(
                x: 400 - imageSize.width / 2,
                y: 400 - imageSize.height / 2,
                width: imageSize.width,
                height: imageSize.height
            ))
        view.backgroundColor = .clear
        view.image = UIImage(named: "logo.png")
        return view
    }()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) { nil }

    private func setup() {
        addSubview(logo)
        backgroundColor = .black
    }
}
