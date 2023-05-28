//
//  ViewController.swift
//  RPSGame
//
//  Created by TEDDY on 3/18/23.
//

import UIKit

class ViewController: UIViewController {
  // 변수이자 속성
  @IBOutlet weak var mainLabel: UILabel!
  @IBOutlet weak var alphagoImageView: UIImageView!
  @IBOutlet weak var myImageView: UIImageView!
  @IBOutlet weak var alphagoChoiceLabel: UILabel!
  @IBOutlet weak var myChoiceLabel: UILabel!
  var myChoice: Rps = Rps.rock
  var alphagoChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
  
  // 함수이자 메서드
  // 화면에 들어오면 처음 실행되는 함수
  override func viewDidLoad() {
    super.viewDidLoad()
    // 이미지 뷰에 준비 이미지를 띄운다.
    alphagoImageView.image = #imageLiteral(resourceName: "ready")
    myImageView.image = #imageLiteral(resourceName: "ready")
    // label에 "준비"라는 문자열을 띄운다.
    alphagoChoiceLabel.text = "준비"
    myChoiceLabel.text = "준비"
  }
  
  @IBAction func rpsButtonTapped(_ sender: UIButton) {
    // 가위, 바위, 보(enum)를 선택하고 정보를 저장 해야한다.
    // sender라는 parameter를 이용하여 가위, 바위, 보 정보 저장
    // 누른 버튼의 문자열이 표시 된다.
    let title = sender.currentTitle!
    
    switch title {
    case "가위":
      myChoice = Rps.scissors
    case "바위":
      myChoice = Rps.rock
    case "보":
      myChoice = Rps.paper
    default:
      break
    }
  }
  
  @IBAction func selectButtonTapped(_ sender: UIButton) {
    // 컴퓨터가 랜덤 선택한 것을 표시
    switch alphagoChoice {
    case Rps.rock:
      alphagoImageView.image = #imageLiteral(resourceName: "rock")
      alphagoChoiceLabel.text = "바위"
    case Rps.paper:
      alphagoImageView.image = #imageLiteral(resourceName: "paper")
      alphagoChoiceLabel.text = "보"
    case Rps.scissors:
      alphagoImageView.image = #imageLiteral(resourceName: "scissors")
      alphagoChoiceLabel.text = "가위"
    }
    
    // 내가 선택한 것을 표시
    switch myChoice {
    case Rps.rock:
      myImageView.image = #imageLiteral(resourceName: "rock")
      myChoiceLabel.text = "바위"
    case Rps.paper:
      myImageView.image = #imageLiteral(resourceName: "paper")
      myChoiceLabel.text = "보"
    case Rps.scissors:
      myImageView.image = #imageLiteral(resourceName: "scissors")
      myChoiceLabel.text = "가위"
    }
        
    // 컴퓨터가 선택한 것과 내가 선택한 것을 비교해서 결과 판단
    if alphagoChoice == myChoice {
      mainLabel.text = "비겼습니다"
    } else if alphagoChoice == .rock && myChoice == .paper {
      mainLabel.text = "이겼습니다"
    } else if alphagoChoice == .paper && myChoice == .scissors {
      mainLabel.text = "이겼습니다"
    } else if alphagoChoice == .scissors && myChoice == .rock {
      mainLabel.text = "이겼습니다"
    } else {
      mainLabel.text = "졌습니다"
    }
  }
  
  @IBAction func resetButtonTapped(_ sender: UIButton) {
    // 다시 준비 표시
    alphagoImageView.image = #imageLiteral(resourceName: "ready")
    alphagoChoiceLabel.text = "준비"
    myImageView.image = #imageLiteral(resourceName: "ready")
    myChoiceLabel.text = "준비"
    
    mainLabel.text = "선택하세요"
    // 다시 랜덤 가위, 바위, 보를 선택하고 저장
    alphagoChoice = Rps(rawValue: Int.random(in: 0...2))!
  }
}
