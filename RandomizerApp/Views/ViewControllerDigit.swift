//
//  ViewControllerDigit.swift
//  RandomizerApp
//
//  Created by Alexey Manokhin on 07.10.2022.
//

import UIKit

class ViewControllerDigit: UIViewController {
    @IBOutlet weak var fromTF: UITextField!
    
    @IBOutlet weak var digitResult: UILabel!
    @IBOutlet weak var toTF: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resultButton(_ sender: UIButton) {
        
        guard let fromTFdigit = Int(fromTF.text!) else { return }
        guard let toTFdigit = Int(toTF.text!) else { return }
        
        let result = Int.random(in: fromTFdigit...toTFdigit)
        
        digitResult.text = String(result)
        
        digitResult.isHidden = false
    }

    
    @IBAction func exitButton(_ sender: UIButton) {
        
        
        dismiss(animated: true, completion: nil)
    }
    
}
