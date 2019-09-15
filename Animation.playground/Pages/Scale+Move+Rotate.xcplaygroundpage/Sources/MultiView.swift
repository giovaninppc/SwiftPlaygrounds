import UIKit

public class MultiSquareView: UIView {
    public var squares: [UIView] = []

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup() {

        for index in 0..<3 {
            let view = UIView(frame: .init(x: 200 , y: 30 + index * 200, width: 120, height: 120))
            view.backgroundColor = .gray
            view.layer.cornerRadius = 8
            squares.append(view)

            addSubview(view)
        }

        backgroundColor = .white
    }
}
