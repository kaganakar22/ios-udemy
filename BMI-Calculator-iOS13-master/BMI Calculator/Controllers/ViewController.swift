//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    @IBAction func weightSliderAction(_ sender: UISlider) {
        
        let roundedValue = round(sender.value * 100) / 100.0
        print(roundedValue)
        weightLabel.text = String(format: "%.0f", sender.value)

    }

    @IBAction func heightSliderAction(_ sender: UISlider) {
        print(Int(sender.value))
        heightLabel.text = String(format: "%.2f", sender.value)

    }
    
    @IBOutlet weak var heightSliderOutlet: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
}

