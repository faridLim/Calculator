//
//  RoundButton.swift
//  Calculator
//
//  Created by 임재헌 on 2021/10/05.
//계산기 버튼에 radius 값을 주어 버튼이 둥글둥글하게 함
//버튼에 radius값을 주려면 코드상에서 버튼의 layer에 접근하여 cornerRadius라는 프로터티 값을 변경해주어야 함  cornerRadius값을 변경하면 변경된 값에 따라 버튼의 테두리가 둥글게 변경됨
// @IBInspectable이라는 Annotaion과 @IBDesignabled이라는 Annotaion을 이용해서 스토리보드에서 버튼의 속성 inspector를 통해 버튼의 모서리를 둥글게 변경가능

import UIKit

//변경된 설정값을 스토리보드 상에서 실시간으로 확인할 수 있게함
@IBDesignable
//UIButton 클래스를 오버라이드하면 기존의 UIButton 속성들을 그래도 사용할 수 있고, 추가적으로 사용자가 원하는 속성들을 정의가능
class RoundButton: UIButton {
    //스토리보드에서도 isRound 설정값을 변경할 수 있게 함
    @IBInspectable var isRound : Bool = false{
        //didSet 새 값이 저장된 직후 호출됨
        didSet{
            if isRound{
                self.layer.cornerRadius = self.frame.height / 2
                //버튼이 둥글게 변화
            }
        }
        
    }

  

}
