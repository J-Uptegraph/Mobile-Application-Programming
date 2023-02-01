//
//  ViewController.swift
//  comicbookTracker
//
//  Created by Johnathan Uptegraph on 9/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of Cells
        return groceries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell")
        
        cell?.textLabel?.text = groceries[indexPath.row]
        
        return cell!
        
    }

    @IBOutlet weak var myTableView: UITableView!
    
    var groceries = ["bread","mac","skyline"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }


}

