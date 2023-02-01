import UIKit

var greeting = "Hello, playground"

//var groceryList = ["bread", "mac", "skyline"]
//var groceryCost = [0.7, 0.5, 2.0]
//
//print(groceryList.count)
//print(groceryCost.count)

struct comicBook {
    var title: String
    var issue: Int
    var grade: Double
}

var boxA = [comicBook(title: "Spider-Man Blue", issue: 37, grade: 8.5),
                  comicBook(title: "Batman: The Killing Joke", issue: 680, grade: 9.0),
                  comicBook(title: "Uncanny X-Men", issue: 120, grade: 8.0),
                  comicBook(title: "Watchmen", issue: 1, grade: 7.0)]

var boxB = [comicBook(title: "Spider-Man Blue", issue: 37, grade: 8.5),
                  comicBook(title: "Batman: The Killing Joke", issue: 680, grade: 9.0),
                  comicBook(title: "Uncanny X-Men", issue: 120, grade: 8.0),
                  comicBook(title: "Watchmen", issue: 1, grade: 7.0)]

var collection = [boxA, boxB]

print (collection[1][0])
