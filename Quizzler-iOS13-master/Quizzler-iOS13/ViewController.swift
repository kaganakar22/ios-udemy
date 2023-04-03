//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        ["Four + Two is equal to Six", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"]
        ]
    
    var questionNumber = 0
    override func viewDidLoad() {
        questionLabel.text = quiz[0][0]
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        if userAnswer == actualAnswer{
            print("Right!")
        }
        else{
            print("Wrong")
        }
        if questionNumber < (quiz.count - 1) {
            questionNumber += 1
        }
        else{
            questionNumber = 0
        }
        updateUI()
    }
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
}

