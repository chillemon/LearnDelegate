import UIKit

class ViewController: UIViewController {
    
    var testView: TestView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testView = TestView()
        testView.delegate = self
        view.addSubview(testView)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        testView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
    }
}
extension ViewController: TestViewDelegate {
    func testViewButtonDidTapped() {
        
        print("a")
     
    }
}
