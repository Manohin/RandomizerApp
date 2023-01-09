//
//  ViewControllerDice.swift
//  RandomizerApp
//
//  Created by Alexey Manokhin on 07.10.2022.
//

import UIKit

class ViewControllerDice: UIViewController {
    @IBOutlet weak var dice: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButton(_ sender: UIButton) {
    
        func randomDice () -> () {
            let randomDigit = Int.random(in: 1...6)
            
             switch randomDigit {
             case 1:
                 dice.image = UIImage(named:"dice1")
             case 2:
                 dice.image = UIImage(named:"dice2")
             case 3:
                 dice.image = UIImage(named:"dice3")
             case 4:
                 dice.image = UIImage(named:"dice4")
             case 5:
                 dice.image = UIImage(named:"dice4")
             case 6:
                 dice.image = UIImage(named:"dice6")
             default:
                 dice.image = UIImage(named:"dice1")
             }
            }
     //   AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) { }
        UISelectionFeedbackGenerator().selectionChanged()
            randomDice()
        }     
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

