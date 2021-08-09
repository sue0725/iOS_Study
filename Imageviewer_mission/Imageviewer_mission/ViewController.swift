//
//  ViewController.swift
//  Imageviewer_mission
//
//  Created by 박수현 on 2021/08/10.
//

import UIKit

class ViewController: UIViewController {
    // 1번 이미지 ~ 6번 이미지까지
    var maxImage = 6
    var numImage = 1

    @IBOutlet var imgGallery: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnPreview(_ sender: UIButton) {
        numImage = numImage - 1
        if(numImage < 1) {
            numImage = maxImage
        }
        // 이미지 이름과 .png 문자열을 합친다.
        let imageName = String(numImage) + ".png"
        imgGallery.image = UIImage(named:imageName)
    }
    
    @IBAction func btnNextView(_ sender: UIButton) {
        numImage = numImage + 1
        if(numImage > maxImage) {
            numImage = 1
        }
        
        let imageName = String(numImage) + ".png"
        imgGallery.image = UIImage(named:imageName)
    }
    
}

