//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    var timeBoil = 60
    var timeRemain = 60
    var timeAccum = 0
    
    @IBOutlet weak var progressBar: UIProgressView!
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    @IBOutlet weak var TopText: UILabel!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        timeBoil = eggTimes[hardness]!
        timeRemain = timeBoil
        timeAccum = 0
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func updateTimer(){
        if timeBoil > 0{
            print("\(timeBoil) seconds.")
            timeBoil -= 1
            timeAccum += 1
            progressBar.progress = Float(timeAccum)/(Float(timeRemain))
            
            
        }
        if timeBoil == 0{
            TopText.text = "Done"
            timer.invalidate()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                self.TopText.text = "How do you like your eggs?"
                
            }
        }
    }
}
