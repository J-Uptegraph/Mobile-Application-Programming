
//  SecondViewController.swift
//  Created by Johnathan Uptegraph on 9/29/22.
//

import UIKit
import SwiftUI

class SecondViewController: UIViewController {
     
    var myIndex = 0;
    @IBOutlet weak var isConnectedSwitch: UISwitch!
    @IBOutlet weak var menuTitleLabel: UILabel!
    @IBOutlet weak var menuDescriptionLabel: UILabel!
    @IBOutlet weak var piConnectedIndicator: UISwitch!
    override func viewDidLoad() {
            super.viewDidLoad()
            let currentMenu = menuTitles[myIndex]
            // print(currentMenu)
            menuTitleLabel.text = currentMenu.menuTitle
            menuDescriptionLabel.text = currentMenu.menuDescription
            //  piConnectedIndicator.offImage = if(currentMenu.piConnected == "false")
            //  Image view


    }
    func checkIsActive() {
        
    }
}
