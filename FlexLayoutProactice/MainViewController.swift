import FlexLayout
import UIKit

class MainViewController: UIViewController {
  fileprivate let rootFlexContainer = UIView()
  
  private lazy var label: UILabel = UILabel()
  private lazy var label1: UILabel = UILabel()
  private lazy var label2: UILabel = UILabel()

  init() {
    super.init(nibName: nil, bundle: nil)
    
    setupView()
    setLayout()
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
  private func setupView() {
    label.text = "Hello, World!"
    label1.text = "Hello, World!11"
    label2.text = "Hello, World!22"
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    rootFlexContainer.pin.all()
    rootFlexContainer.flex.layout()
  }
}

extension MainViewController {
  private func setLayout() {
    view.addSubview(rootFlexContainer)
    
    rootFlexContainer.flex.define { flex in
      flex.addItem(label)
      flex.addItem(label1)
      flex.addItem(label2)
    }
  }
}
