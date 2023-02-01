//
//  ViewController.swift
//  D&D Dice Roller
//
//  Created by Johnathan Uptegraph on 10/2/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rollValue: UILabel!
    @IBOutlet weak var rollButton: UIButton!
    @IBAction func rollButton(_ sender: Any) {
        die.rollDie()
        rollValue.text =  String(die.faceUp)
    }
    @IBOutlet weak var numSidesSegmentedController: UISegmentedControl!
    @IBAction func numSidesSegmentedController(_ sender: Any) {
        switch numSidesSegmentedController.selectedSegmentIndex
            {
            case 0:
                die.numSides = 4
            case 1:
                die.numSides = 6
            case 2:
                die.numSides = 8
            case 3:
                die.numSides = 10
            case 4:
                die.numSides = 12
            case 5:
                die.numSides = 20
            default:
                break
            }
    }
     
    
    struct dice {
        var numSides: Int
        var faceUp: Int

        mutating func rollDie() {
            faceUp = Int(arc4random_uniform(UInt32(numSides))+1);
        }
    }
    
    var die = dice(numSides: 4, faceUp: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

