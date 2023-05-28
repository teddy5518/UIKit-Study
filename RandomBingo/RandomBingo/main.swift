//
//  main.swift
//  RandomBingo
//
//  Created by TEDDY on 3/18/23.
//

import Foundation

var alphagoChoice = Int.random(in: 1...100)
var myChoice = 0

while true {
  var userInput = readLine()
  
  // userInput이 옵셔널 타입이기 때문에 옵셔널 바인딩을 해줘야한다.
  if let input = userInput {
    // input을 Int로 변화하는 과정에서 옵셔널 바인딩을 한번 더 해줘야한다.
    if let number = Int(input) {
      myChoice = number
    }
  }
  
  if alphagoChoice > myChoice {
    print("UP")
  } else if alphagoChoice < myChoice {
    print("DOWN")
  } else {
    print("BINGO")
    break
  }
}

