//
//  SignUpViewController.swift
//  Movie
//
//  Created by User on 2022/07/08.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var appTitleLabel: UILabel!
    
    @IBOutlet var inputBtns: [UIButton]!
    
    @IBOutlet weak var optionInfoLabel: UILabel!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialConfig()
        designLabel(label: appTitleLabel, title: "FlexTV", titleColor: .red, size: 35, fontStyle: "Bold")
        designInputBtns(btns: inputBtns, radiusSize: 5, bgColor: .gray, textColor: .white, textSize: 20, "이메일 주소 또는 전화번호", "비밀번호", "닉네임", "위치", "추천 코드 입력")
        designLabel(label: optionInfoLabel, title: "추가 정보 입력", titleColor: .white, size: 20, fontStyle: "기본")
        designSignUpButton(btn: signUpButton, radiusSize: 5, bgColor: .white, textColor: .black, textSize: 25, title: "회원가입")
    }
    
    func initialConfig() {
        view.backgroundColor = .black
    }

    func designLabel(label: UILabel, title: String, titleColor: UIColor, size: CGFloat, fontStyle: String) {
        label.text = title
        label.textColor = titleColor
        label.font = fontStyle == "Bold" ?
        UIFont.boldSystemFont(ofSize: size)
        : UIFont.systemFont(ofSize: size)
    }
    
    func designInputBtns(btns: [UIButton], radiusSize: CGFloat, bgColor: UIColor, textColor: UIColor, textSize: CGFloat, _ titles: String...) {
        for i in 0...(btns.count-1) {
            btns[i].layer.cornerRadius = radiusSize
            btns[i].backgroundColor = bgColor
            btns[i].tintColor = textColor
            btns[i].titleLabel?.font = UIFont.systemFont(ofSize: textSize)
            btns[i].setTitle(titles[i], for: .normal)
        }
    }
    
    func designSignUpButton(btn: UIButton, radiusSize: CGFloat, bgColor: UIColor, textColor: UIColor, textSize: CGFloat, title: String) {
        btn.layer.cornerRadius = radiusSize
        btn.backgroundColor = bgColor
        btn.tintColor = textColor
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: textSize)
        btn.setTitle(title, for: .normal)
    }
}
