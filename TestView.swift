import Foundation
import UIKit

class TestView: UIView {
    
    private var button: UIButton!
    private var xTextField: UITextField!
    private var yTextField: UITextField!
    private var resultLabel: UILabel!
    
    weak var delegate: TestViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        button = UIButton()
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        addSubview(button)
        
        xTextField = UITextField()
        addSubview(xTextField)
        yTextField = UITextField()
        addSubview(yTextField)
        resultLabel = UILabel()
        addSubview(resultLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        button.frame = CGRect(x: 150, y: 300, width: 100, height: 50)
        button.backgroundColor = .green

        xTextField.keyboardType = .numberPad
        xTextField.backgroundColor = .gray
        xTextField.frame = CGRect(x: 0, y: 200, width: 200, height: 50)

        yTextField.keyboardType = .numberPad
        yTextField.backgroundColor = .cyan
        yTextField.frame = CGRect(x: 210, y: 200, width: 200, height: 50)
        
        resultLabel.text = ""
        resultLabel.backgroundColor = .blue
        resultLabel.frame = CGRect(x: 100, y: 50, width: 200, height: 100)
        
        
    }
    @objc private func buttonTapped(_ sender: UIButton) {
        
        let x = xTextField
        let y = yTextField
        
        let IntX = Int(xTextField.text!)!
        let IntY = Int(yTextField.text!)!
        
        var result = IntX + IntY
        resultLabel.text = String(result)
        delegate?.testViewButtonDidTapped()
    }
}
