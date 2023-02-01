//
//  ViewController.swift
//  ReadingApp
//
//  Created by Johnathan Uptegraph on 8/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    struct Book {
        let titleOfBook:String
        let authorName:String
        var currentPage:Int
        let totalPages:Int
        var status: Int
        
        mutating func changeCurrentPage(){
            if (currentPage == totalPages) {
                print("You finished the book!")
                status = 1
            }
            else{
                currentPage += 1
            }
        }
        func updateCurrentPage(){
            
        }
    }

    var zombieHaiku = Book(titleOfBook: "Zombie Haiku", authorName: "Ryan Mecum", currentPage: 0, totalPages: 2, status: 0)

    @IBOutlet weak var labelStatus: UILabel!
    @IBOutlet weak var labelAuthor: UILabel!
   
    @IBOutlet weak var labelBookTitle: UILabel!
    @IBOutlet weak var labelCurrentPage: UILabel!
    @IBOutlet weak var labelTotalPages: UILabel!
    // run the minute the code is run.
    @IBAction func turnPage(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelBookTitle.text = zombieHaiku.titleOfBook
        labelStatus.text = String(zombieHaiku.status)
        if(zombieHaiku.status == 0) {
            labelStatus.text = "Not Complete"
        } else {
            labelStatus.text = "Complete"
        }
        labelAuthor.text = String(zombieHaiku.authorName)
        labelCurrentPage.text = "Current Page: " + String(zombieHaiku.currentPage) + " / "
        labelTotalPages.text = String(zombieHaiku.totalPages)
    }

}
