//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftSideIndex = 1;
    var rightSideIndex = 5;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onRollPressed(_ sender: UIButton) {
        var diceImages: Array<UIImage> = []
        diceImages.append(UIImage(named: "DiceOne")!)
        diceImages.append(UIImage(named: "DiceTwo")!)
        diceImages.append(UIImage(named: "DiceThree")!)
        diceImages.append(UIImage(named: "DiceFour")!)
        diceImages.append(UIImage(named: "DiceFive")!)
        diceImages.append(UIImage(named: "DiceSix")!)
        
        diceImageView1.image = diceImages[leftSideIndex]
        diceImageView2.image = diceImages[rightSideIndex]
        leftSideIndex += 1
        rightSideIndex -= 1

    }
    
}

