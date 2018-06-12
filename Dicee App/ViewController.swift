//
//  ViewController.swift
//  Dicee App
//
//  Created by Vasco Silva on 12/06/2018.
//  Copyright © 2018 Gen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceImages = [
        "dice1",
        "dice2",
        "dice3",
        "dice4",
        "dice5",
        "dice6"
    ]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rollDices()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDices()
    }
    
    func rollDices() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1, randomDiceIndex2)
        
        diceImageView1.image = UIImage(named: diceImages[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceImages[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDices()
    }
}

