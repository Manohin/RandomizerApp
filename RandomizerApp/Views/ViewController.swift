//
//  ViewController.swift
//  RandomizerApp
//
//  Created by Alexey Manokhin on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceButton: UIButton!
    
    @IBOutlet weak var coinButton: UIButton!
    
    @IBOutlet weak var digitButton: UIButton!
    
    @IBOutlet weak var letterButton: UIButton!
    
    @IBOutlet weak var yesNoButton: UIButton!
    
    override func viewDidLoad() {
        
        
        
        
        diceButton.layer.cornerRadius = 20
        coinButton.layer.cornerRadius = 20
        digitButton.layer.cornerRadius = 20
        letterButton.layer.cornerRadius = 20
        yesNoButton.layer.cornerRadius = 20
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToLetterView(_ sender: UIButton) {
    }
    @IBAction func goToDigitView(_ sender: UIButton) {
    }
    @IBAction func goToCoinView(_ sender: UIButton) {
    }
    @IBAction func goToDiceView(_ sender: UIButton) {
    }
    
    @IBAction func goToYesOrNoView(_ sender: UIButton) {
    }
}

