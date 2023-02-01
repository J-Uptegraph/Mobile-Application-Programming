import UIKit

var greeting = "Hello, playground"

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
}

var zombieHaiku = Book(titleOfBook: "Zombie Haiku", authorName: "Ryan Mecum", currentPage: 0, totalPages: 2, status: 0)

zombieHaiku.changeCurrentPage()
zombieHaiku.changeCurrentPage()
zombieHaiku.changeCurrentPage()

