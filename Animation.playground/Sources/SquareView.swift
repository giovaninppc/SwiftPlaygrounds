import UIKit

public class SquareView: UIView {

    public let square: UIView = {
        let view = UIView(frame: .init(x: 200, y: 300, width: 100, height: 100))
        view.backgroundColor = .gray
        view.layer.cornerRadius = 8
        return view
    }()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        addSubview(square)
        backgroundColor = .white
    }
}
