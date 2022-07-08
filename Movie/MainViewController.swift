//
//  MainViewController.swift
//  Movie
//
//  Created by User on 2022/07/08.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var mainImgView: UIImageView!
    @IBOutlet weak var logoLabel: UILabel!
    
    @IBOutlet weak var previewLabel: UILabel!
    @IBOutlet weak var myContentButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var infoButton: UIButton!
    
    @IBOutlet var menuButtons: [UIButton]!
    @IBOutlet var previewImgs: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        designLogoLabel(bigLabel: logoLabel, logoText: "N")
        designMenuButton(buttons: menuButtons, "TV프로그램", "영화", "내가 찜한 콘텐츠")
        designPreviewImgs(imgs: previewImgs, "명량", "부산행", "아바타")
        designPreviewLabel(label: previewLabel, title: "미리보기")
        designButton(btn: myContentButton, bgColor: .clear, title: "내가 찜한 컨텐츠", img: UIImage(named: "check")!, textColor: .white)
        designButton(btn: playButton, bgColor: .white, title: "재생", img: UIImage(systemName: "play.fill")!, textColor: .black)
        designButton(btn: infoButton, bgColor: .clear, title: "정보", img: UIImage(named: "info")!, textColor: .white)
    }
    
    func designLogoLabel(bigLabel: UILabel, logoText: String) {
        logoLabel.text = logoText
        logoLabel.textColor = .white
        logoLabel.font = .boldSystemFont(ofSize: 50)
        logoLabel.textAlignment = .center
        logoLabel.numberOfLines = 1
    }
    
    func designMenuButton(buttons: [UIButton], _ buttonTexts: String...) {
        for i in 0...(buttons.count-1) {
            buttons[i].setTitle(buttonTexts[i], for: .normal)
            buttons[i].tintColor = .white
            buttons[i].titleLabel?.font = .boldSystemFont(ofSize: 35)
        }
    }
    
    func designPreviewImgs(imgs: [UIImageView], _ movieTitles: String...) {
        for i in 0...(imgs.count-1) {
            imgs[i].image = UIImage(named: movieTitles[i])
            imgs[i].layer.cornerRadius = imgs[i].frame.size.width / 2
            imgs[i].layer.borderColor = UIColor.gray.cgColor
            imgs[i].contentMode = .scaleAspectFill
        }
    }
    
    func designPreviewLabel(label: UILabel, title: String) {
        label.text = title
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .white
    }
    
    func designButton(btn: UIButton, bgColor: UIColor, title: String, img: UIImage, textColor: UIColor) {
        btn.setTitle(title, for: .normal)
        btn.backgroundColor = bgColor
        btn.setImage(img, for: .normal)
        btn.tintColor = textColor
    }

    
    @IBAction func clickButton(_ sender: UIButton) {
        mainImgView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        for img in previewImgs {
            img.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        }
    }
}
