//
//  ViewController.swift
//  stopWatch
//
//  Created by Chris Smith on 29/03/2017.
//  Copyright © 2017 CDSApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    var time = 0
    
    //Timer
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.textColor = .white
    }

    @IBAction func startTapped(_ sender: Any) {
        startButton.isEnabled = false
        timer = Timer.scheduledTimer(timeInterval: 1.00, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
        }

    @IBAction func pauseTapped(_ sender: Any) {
        startButton.isEnabled = true
        startButton.setTitle("Resume", for: .normal)
        timer.invalidate()
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        startButton.isEnabled = true
        startButton.setTitle("Start", for: .normal)
        timer.invalidate()
        time = 0
        timeLabel.text = ("0")
    }
    
    
    func action(){
        time += 1
        timeLabel.text = String(time)
    }
}





















































