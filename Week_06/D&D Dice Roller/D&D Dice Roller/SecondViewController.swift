//
//  SecondViewController.swift
//  D&D Dice Roller
//
//  Created by Johnathan Uptegraph on 10/2/22.
//

import UIKit
import SwiftUI

class SecondViewController: UIViewController {

    @IBOutlet var name: UITextField!
    @IBOutlet var maxHP: UITextField!
    @IBOutlet var strength: UITextField!
    @IBOutlet var intelligence: UITextField!
    @IBOutlet var charisma: UITextField!
    @IBOutlet var constitution: UITextField!
    @IBOutlet var wisdom: UITextField!
    @IBOutlet var dexterity: UITextField!
    @IBOutlet var saveDataButton: UIButton!
    
    let userDefaults = UserDefaults.standard

    let NAME_KEY = "nameKey"
    let MAX_HP_KEY = "maxHPKey"
    let STRENGTH_KEY = "strengthKey"
    let INTELLIGENCE_KEY = "intelligenceKey"
    let CHARISMA_KEY = "charismaKey"
    let CONSTITUTION_KEY = "constitutionKey"
    let WISDOM_KEY = "wisdomKey"
    let DEXTERITY_KEY = "dexterityKey"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadData()
    }
    
    @IBAction func saveDataButton(_ sender: Any) {
        userDefaults.set(name.text, forKey: NAME_KEY)
        userDefaults.set(maxHP.text, forKey: MAX_HP_KEY)
        userDefaults.set(strength.text, forKey: STRENGTH_KEY)
        userDefaults.set(intelligence.text, forKey: INTELLIGENCE_KEY)
        userDefaults.set(charisma.text, forKey: CHARISMA_KEY)
        userDefaults.set(constitution.text, forKey: CONSTITUTION_KEY)
        userDefaults.set(wisdom.text, forKey: WISDOM_KEY)
        userDefaults.set(dexterity.text, forKey: DEXTERITY_KEY)
    }
    
    func loadData(){
        let nameData = userDefaults.string(forKey: NAME_KEY)
        let maxHPData = userDefaults.string(forKey: MAX_HP_KEY)
        let strengthData = userDefaults.string(forKey: STRENGTH_KEY)
        let intelligenceData = userDefaults.string(forKey: INTELLIGENCE_KEY)
        let charismaData = userDefaults.string(forKey: CHARISMA_KEY)
        let constitutionData = userDefaults.string(forKey: CONSTITUTION_KEY)
        let wisdomData = userDefaults.string(forKey: WISDOM_KEY)
        let dexterityData = userDefaults.string(forKey: DEXTERITY_KEY)
        
        name.text = nameData
        maxHP.text = maxHPData
        strength.text = strengthData
        intelligence.text = intelligenceData
        charisma.text = charismaData
        constitution.text = constitutionData
        wisdom.text = wisdomData
        dexterity.text = dexterityData
    }

}

