//
//  ViewControllerYesNo.swift
//  RandomizerApp
//
//  Created by Alexey Manokhin on 07.10.2022.
//

import UIKit

class ViewControllerYesNo: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func resultButton(_ sender: UIButton) {
        func resultFunc () -> () {
            
            let result = Int.random(in: 0...1)
            result == 0 ? (resultLabel.text = "ДА!") : (resultLabel.text = "НЕТ!")
        }
        resultFunc()
        resultLabel.isHidden = false
    }
    @IBAction func exitButton(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
