//
//  ViewControllerCoin.swift
//  RandomizerApp
//
//  Created by Alexey Manokhin on 07.10.2022.
//

import UIKit

class ViewControllerCoin: UIViewController {
    
    @IBOutlet weak var coin: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        coin.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func coinRoll(_ sender: UIButton) {
        
        func coinRolling () -> () {
            let coinResult = Int.random(in: 1...2)
            coinResult == 1 ? (coin.image = UIImage(named:"orel")) : (coin.image = UIImage(named:"reshka"))
        }
        coinRolling()
        coin.isHidden = false
    }
    @IBAction func exitButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
