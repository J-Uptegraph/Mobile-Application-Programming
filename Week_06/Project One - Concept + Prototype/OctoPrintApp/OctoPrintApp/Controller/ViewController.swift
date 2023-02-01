//
//  ViewController.swift
//  OctoPrintApp
//
//  Created by Johnathan Uptegraph on 9/26/22.
//
import UIKit
import SwiftUI

struct menuOption {
    var menuTitle: String
    var menuDescription: String
    var piConnected: Bool
}

class ViewController: UIViewController {
    
    
    @IBOutlet var tableView: UITableView!
    
    let parser = Parser()
    var locations = [Location]()
    
    // var location = [Location]()
    override func viewDidLoad() {
        super.viewDidLoad()
        parser.parse {
            data in
            self.locations = data
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        tableView.dataSource = self
        
    }
    
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(locations.count)
        return locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = locations[indexPath.row].name
        print(cell)
        return cell
    }

}

        
//    var menuTitles = [connectionSettings, printerStatus, printProgress, yourFiles, temperatureControl, printerControl, gCodeViewer]
//
//    var connectionSettings = menuOption(menuTitle: "Connection Settings", menuDescription: "This feature checks to see if the printer is connected.", piConnected: false)
//
//    var printerStatus = menuOption(menuTitle: "Printer Status", menuDescription: "This feature checks to see if the printer is active.", piConnected: false)
//
//    var printProgress = menuOption(menuTitle: "Print Progress", menuDescription: "This feature checks the current status of the active print.", piConnected: false)
//
//    var yourFiles = menuOption(menuTitle: "Your Files", menuDescription: "This feature provides a list of files that the user can upload to, or print from.", piConnected: false)
//
//    var temperatureControl = menuOption(menuTitle: "Temperature Control", menuDescription: "This feature allows the user to preheat the print bed and the extruder.", piConnected: false)
//
//    var printerControl = menuOption(menuTitle: "Printer Control", menuDescription: "This feature allows the user to control the X, Y, and Z axis of the printer.", piConnected: false)
//
//    var gCodeViewer = menuOption(menuTitle: "gCodeViewer", menuDescription: "This feature allows the user to preview the current location of the extruder as it passes gCode to the printer.", piConnected: false)






    
        
//        func numberOfSections(in tableView: UITableView) -> Int {
//            return 1
//        }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = menuTitles[indexPath.row].menuTitle
//        // cell.textLabel?.text =d menuTitles[indexPath.row].menuDescription
//        // cell.textLabel?.text = String(menuTitles[indexPath.row].piConnected)
//        return cell
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if(segue.identifier == "menuSegue") {
//            let destination = segue.destination as? SecondViewController
//            destination?.myIndex = tableView.indexPathForSelectedRow!.row
//            }
//        }
//    }

//
//func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//    cell.textLabel?.text = menuTitles[indexPath.row].menuTitle
//    // cell.textLabel?.text =d menuTitles[indexPath.row].menuDescription
//    // cell.textLabel?.text = String(menuTitles[indexPath.row].piConnected)
//    return cell
//}
//
//override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if(segue.identifier == "menuSegue") {
//        let destination = segue.destination as? SecondViewController
//        destination?.myIndex = tableViewMainMenu.indexPathForSelectedRow!.row
//        }
//    }
//}


