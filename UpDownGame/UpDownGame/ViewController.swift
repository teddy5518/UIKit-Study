//
//  ViewController.swift
//  UpDownGame
//
//  Created by TEDDY on 3/19/23.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var mainLabel: UILabel!
  @IBOutlet weak var numberLabel: UILabel!
  
  // 컴퓨터가 랜덤으로 1 ~ 10 숫자를 선택
  var alphagoNumber = Int.random(in: 1...10)
  var myNumber: Int = 1
  
  // 앱이 실행되면 제일 먼저 실행되는 함수
  override func viewDidLoad() {
    super.viewDidLoad()
    mainLabel.text = "선택하세요"
    numberLabel.text = ""
  }

  @IBAction func buttonTapped(_ sender: UIButton) {
    // 버튼의 숫자를 가져온다.
    guard let numberString = sender.currentTitle else { return }
    
    // 숫자 레이블이 바뀌도록 한다.
    numberLabel.text = numberString
    
    // 선택한 숫자를 변수에 저장한다.
    guard let num = Int(numberString) else { return }
    myNumber = num
  }
  
  @IBAction func selectButtonTapped(_ sender: UIButton) {
    // 컴퓨터의 숫자와 내가 선택한 숫자를 비교 UP / DOWN / BINGO
    if alphagoNumber > myNumber {
      mainLabel.text = "UP"
    } else if alphagoNumber < myNumber {
      mainLabel.text = "DOWN"
    } else {
      mainLabel.text = "⭐️BINGO⭐️"
    }
  }
  
  @IBAction func resetButtonTapped(_ sender: UIButton) {
    // 다시 "선택하세요"로 재변경
    mainLabel.text = "선택하세요"
    // 다시 ""로 변경
    numberLabel.text = ""
    // 컴퓨터의 랜덤숫자를 다시 선택하게 한다.
    alphagoNumber = Int.random(in: 1...10)
  }
}

