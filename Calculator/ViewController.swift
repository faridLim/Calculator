//
//  ViewController.swift
//  Calculator
//
//  Created by 임재헌 on 2021/10/02.
//

import UIKit

enum Operator{
    case Add
    case Subtract
    case Multiply
    case Divide
    case Unknown
}

class ViewController: UIViewController {

    @IBOutlet weak var numOutputLabel: UILabel!
   
    //계산기에 숫자를 누를때마다 OutputLabel에 표시되는 숫자
    var disPlayNum = ""
    //이전 계산값을 저장 (첫 번째 피연산자)
    var firstOperand = ""
    //새로 입력된 값을 저장 (두 번째 피연산자)
    var secondOperand = ""
    // 계산의 결과값
    var result = ""
    // 현재 계산기에 어떤 연산자가 입력되었는지 저장
    var currentOperation : Operator = .Unknown
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapNumBtn(_ sender: UIButton) {
        //선택한 버튼의 타이틀을 가져옴 (옵셔널 타입이기에 옵셔널 바인딩 수행)
        guard let numValue = sender.title(for: .normal) else {return}
        // numValue값을 disPlayNum 프로퍼티에 넘겨줄 건데, 9자리가 넘지 않도록 함
        if self.disPlayNum.count < 9 {
            self.disPlayNum += numValue
            self.numOutputLabel.text  = self.disPlayNum 
        }
    }
    
    @IBAction func tabClearBtn(_ sender: UIButton) {
        self.disPlayNum = ""
        self.firstOperand = ""
        self.secondOperand = ""
        self.result = ""
        self.currentOperation = .Unknown
        self.numOutputLabel.text = "0"
    }
    
    @IBAction func tabDotBtn(_ sender: UIButton) {
        if self.disPlayNum.count < 8 , !self.disPlayNum.contains("."){
            self.disPlayNum += self.disPlayNum.isEmpty ? "0." : "."
            //self.disPlayNum가 비어있으면 + 0. 안비어있으면 .
            self.numOutputLabel.text = self.disPlayNum
        }
    }
    
    @IBAction func tabDivBtn(_ sender: UIButton) {
    }
    
    @IBAction func tabMulBtn(_ sender: UIButton) {
    }
    
    @IBAction func tabSubBtn(_ sender: UIButton) {
    }
    
    @IBAction func tabAddBtn(_ sender: UIButton) {
    }
    
    @IBAction func tabEqualBtn(_ sender: UIButton) {
    }
}

