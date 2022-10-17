//
//  ViewControllerLetter.swift
//  RandomizerApp
//
//  Created by Alexey Manokhin on 07.10.2022.
//

import UIKit

class ViewControllerLetter: UIViewController {
    
    @IBOutlet weak var rusEngSC: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resultButton(_ sender: UIButton) {
        resultLabel.isHidden = false
        if rusEngSC.selectedSegmentIndex == 0 {
            let rusAlphabet:[Character] = ["А","Б","В","Г","Д","Е","Ё","Ж","З","И","Й","К","Л","М","Н","О","П","Р","С","Т","У","Ф","Х","Ц","Ч","Ш","Щ","Ъ","Ы","Ь","Э","Ю","Я"]
            
            if let result = rusAlphabet.randomElement() {
                resultLabel.text = (String(result))
            } else {
                return
            }
        }
        if rusEngSC.selectedSegmentIndex == 1 {
            let engAlphabet:[Character] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
            
            if let result = engAlphabet.randomElement() {
                resultLabel.text = (String(result))
            } else {
                return
            }
           
        }
    }
    @IBAction func closeButton(_ sender: UIButton) {
        
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
