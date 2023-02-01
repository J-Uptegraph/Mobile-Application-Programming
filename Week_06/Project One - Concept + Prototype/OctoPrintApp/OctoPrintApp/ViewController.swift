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
    // Add an array of moves with damage and type
    // pokemonHeight in meters and feet add "m" for meters
    // pokemonWeight in kg and lbs
    // Evolutions?
}

class ViewController: UIViewController {
    @IBOutlet weak var tableViewMainMenu: UITableView!
   
    
    let parser = Parser()
    var location = [Location]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMainMenu.delegate = self
        tableViewMainMenu.dataSource = self
        
        parser.parse{
            data in
            self.location = [data]
            // Remove [] from data
            DispatchQueue.main.async {
                self.tableViewMainMenu.reloadData()
            }
        }
        tableViewMainMenu.dataSource = self
    }
    
}
        
    var menuTitles = [connectionSettings, printerStatus, printProgress, yourFiles, temperatureControl, printerControl, gCodeViewer]

    var connectionSettings = menuOption(menuTitle: "Connection Settings", menuDescription: "This feature checks to see if the printer is connected.", piConnected: false)

    var printerStatus = menuOption(menuTitle: "Printer Status", menuDescription: "This feature checks to see if the printer is active.", piConnected: false)

    var printProgress = menuOption(menuTitle: "Print Progress", menuDescription: "This feature checks the current status of the active print.", piConnected: false)

    var yourFiles = menuOption(menuTitle: "Your Files", menuDescription: "This feature provides a list of files that the user can upload to, or print from.", piConnected: false)

    var temperatureControl = menuOption(menuTitle: "Temperature Control", menuDescription: "This feature allows the user to preheat the print bed and the extruder.", piConnected: false)

    var printerControl = menuOption(menuTitle: "Printer Control", menuDescription: "This feature allows the user to control the X, Y, and Z axis of the printer.", piConnected: false)

    var gCodeViewer = menuOption(menuTitle: "gCodeViewer", menuDescription: "This feature allows the user to preview the current location of the extruder as it passes gCode to the printer.", piConnected: false)


    
    extension ViewController: UITableViewDelegate {
        private func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                // select identifier using . "name" or "location" or...
                cell.textLabel?.text = location[indexPath.row].name
                return cell
        }
    }
        
    extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // return menuTitles.count
            return location.count
            
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = menuTitles[indexPath.row].menuTitle
        // cell.textLabel?.text =d menuTitles[indexPath.row].menuDescription
        // cell.textLabel?.text = String(menuTitles[indexPath.row].piConnected)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "menuSegue") {
            let destination = segue.destination as? SecondViewController
            destination?.myIndex = tableViewMainMenu.indexPathForSelectedRow!.row
            }
        }
    }

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


