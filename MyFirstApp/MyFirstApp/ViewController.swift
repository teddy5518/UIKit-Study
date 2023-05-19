
import UIKit

class ViewController: UIViewController {
  
  // Inteface Builder Outlet
  @IBOutlet weak var mainLabel: UILabel!
  @IBOutlet weak var myButton: UIButton!
  
  // 앱의 화면에 들어오면 처음 실행시키는 함수
  override func viewDidLoad() {
    super.viewDidLoad()
   
    mainLabel.backgroundColor = UIColor.yellow
    
  }
  
  // UIButton is type.
  // Inteface Builder Action
  @IBAction func buttonPressed(_ sender: UIButton) {
    // mainLabel.backgroundColor = UIColor.yellow
    // buttonPressed라는 함수가 실행되면 mainLabel의 text를 변경
    mainLabel.text = "Hello, World!"
    // #colorLiteral(
    mainLabel.backgroundColor = #colorLiteral(red: 1, green: 0.5848469138, blue: 0.007455529179, alpha: 1)
    mainLabel.textColor = UIColor.white
    
    myButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
  }
}

