//
//  ViewController.swift
//  TimerProject
//
//  Created by oğuzhan selamoğlu on 24.04.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 10
        
   
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }

    @objc func timerFunction() {
      
        timerLabel.text = "Time \(counter)"
        counter = counter - 1
        
        if counter == 0 {
            timerLabel.text = "Time is over"
            timer.invalidate()
        }
    }

}

