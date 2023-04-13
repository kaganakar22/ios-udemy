//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var height: Float = 0.0
    var weight: Float = 0.0
    var bmi: Float = 0.0
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

    @IBOutlet weak var heightSlide: UISlider!
    @IBAction func calculatePressed(_ sender: UIButton) {
        height = heightSlide.value
        weight = weightSliderOutlet.value
        bmi = (weight)/pow(height,2)
        print(bmi)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.1f", bmi)
        }
    }
   
    
}

