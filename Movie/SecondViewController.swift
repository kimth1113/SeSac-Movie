//
//  SecondViewController.swift
//  Movie
//
//  Created by User on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {

    //IB는 Interface Builder, 스토리보드상에서 온 아웃렛 변수
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    
    //뷰컨트롤러의 생명주기 중 하나
    //사용자에게 화면이 보이기 직전에 실행
    override func viewDidLoad() {
        super.viewDidLoad()

        ImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        ImageView.layer.cornerRadius = 20
        ImageView.layer.borderWidth = 5
        ImageView.layer.borderColor = UIColor.blue.cgColor
        
        
        titleLable.text = "7번방의 선물"
        titleLable.backgroundColor = .yellow
        titleLable.textColor = .red
        titleLable.font = .boldSystemFont(ofSize: 30)
    }
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        ImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
    }
    

}
