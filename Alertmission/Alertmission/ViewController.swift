//
//  ViewController.swift
//  AlertMission
//
//  Created by 박수현 on 2021/08/02.
//

import UIKit

class ViewController: UIViewController {
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var isClickConfirm = false

    @IBOutlet var lblcurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text =
             formatter.string(from: datePickerView.date)
    }
    
    @objc func timerOn() {
        isClickConfirm = false
    }
    
    @objc func updateTime() {
        let date = NSDate()
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblcurrentTime.text = formatter.string(from: date as Date)
        
        if isClickConfirm {
            return
        }
        
        if lblPickerTime.text == lblcurrentTime.text {
            let alert = UIAlertController(title: "알림", message: "설정된 시간입니다!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: UIAlertAction.Style.default) { UIAlertAction in self.isClickConfirm = true
                
                Timer.scheduledTimer(timeInterval: 60.0, target: self, selector: #selector(self.timerOn), userInfo: nil, repeats: false)
            })
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

