//
//  ViewController.swift
//  Practice_imageView
//
//  Created by 박수현 on 2021/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    var img01: UIImage?
    var img02: UIImage?
    var img03: UIImage?
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnBefore: UIButton!
    @IBOutlet var btnNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgView.image = img01
        imgView.image = img02
        imgView.image = img03
    }
    @IBAction func btnReBefore(_ sender: UIButton) {
    
    }
}

