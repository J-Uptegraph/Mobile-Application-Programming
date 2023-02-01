import UIKit

var greeting = "Hello, playground"

var age = 43

age = age + 1

print(age)

func brushTeeth() {
    print("teeth are clean")
}

brushTeeth()

struct Person {
    var hairColor:String
    let birthdayMonth:Int
    var lastName:String
    var numberOfHB:Int

    mutating func heartBeat(){
        print("thump thump")
        numberOfHB = numberOfHB - 1
        if(numberOfHB < 0){
            print("You Are Dead")
        }
    }
    
    mutating func changeHairToBlonde(){
        hairColor = "Blonde"
    }
    
    func tellHairColor(){
        print(hairColor)
    }
}

var artie = `Person(hairColor: "Brown"`, birthdayMonth: 12, lastName: "Kuhn", numberOfHB: 7)

var gabby = Person(hairColor: "Brown", birthdayMonth: 9, lastName: "Grace", numberOfHB: 100000)

gabby.changeHairToBlonde()
gabby.tellHairColor()
artie.tellHairColor()
artie.heartBeat()
artie.heartBeat()
artie.heartBeat()
artie.heartBeat()
artie.heartBeat()
artie.heartBeat()
artie.heartBeat()
artie.heartBeat()


