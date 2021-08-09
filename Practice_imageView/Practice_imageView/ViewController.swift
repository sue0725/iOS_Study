//
//  ViewController.swift
//  Practice_imageView
//
//  Created by 박수현 on 2021/07/23.
//

import UIKit

class ViewController: UIViewController {
    var maxImage = 3
    var numImage = 1
    
    @IBOutlet var imgGallery: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBefore(_ sender: UIButton) {
        numImage = numImage - 1
        if(numImage < maxImage) {
            numImage = maxImage
        }
        let imageName = String(numImage) + ".png"
        imgGallery.image = UIImage(named:imageName)
    }
    
    
    @IBAction func btnNext(_ sender: UIButton) {
        numImage = numImage + 1
        if(numImage > maxImage){
            numImage = 1
        }
        let imageName = String(numImage) + ".png"
        imgGallery.image = UIImage(named:imageName)
    }
}


