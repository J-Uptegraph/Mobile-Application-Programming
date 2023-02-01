import UIKit

let firstName = "Johnathan"
let lastName = "Uptegraph"

struct Player {
    var characterName: String
    var strength: Int
    var intelligence: Int
    var wisdom: Int
    var dexterity: Int
    var constitution: Int
    var charisma: Int
    var characterItems: String
    var characterCatchPhrase: String
    var currentHP: Int
    var maximumHP: Int
    
    mutating func displayCurrentHP(){
        if (currentHP <= 0){
            print("player died")
        }
        else if(maximumHP < currentHP){
            currentHP = maximumHP
            print(currentHP)
        }
        else {
           print(currentHP)
        }
    }
    
    func displayCharacterCatchPhrase(){
        print (characterCatchPhrase)
    }
    
    mutating func minorDamage(){
        currentHP -= 5
    }
    
    mutating func majorDamage(){
        currentHP -= 25
    }
    
    mutating func healthPack(){
        currentHP += 15
        print (currentHP)
    }
    
    mutating func healthRestore(){
        currentHP = maximumHP
        print (currentHP)
    }
    
}

var person = Player(characterName: "Rumble McSkirmish", strength: 18, intelligence: 5, wisdom: 3, dexterity: 15, constitution: 18, charisma: 10, characterItems: "Red Headband", characterCatchPhrase: "Fireball! Upper cut! Downer cut! Bowl of punch!", currentHP: 138, maximumHP: 145)
    

print ("_____________Basic_Tasks____________\n")
print ("Johnathan")
print (firstName + " " + lastName)
print ("\n____________Struct_Tasks____________\n")
person.displayCharacterCatchPhrase()
print ("\n__________Opperator_Tasks___________\n")
print ("Current Health: ")
person.displayCurrentHP()
print ("Health Restored: ")
person.healthRestore()
print ("Minor Damage: ")
person.minorDamage()
person.displayCurrentHP()
print ("Major Damage: ")
person.majorDamage()
person.displayCurrentHP()
print ("Health Pack: ")
person.healthPack()
print ("Health Restored: ")
person.healthRestore()

print ("\n________Control_Flow_Tasks_________\n")
print ("Current Health: ")
person.displayCurrentHP()
print ("Major Damage!")
person.majorDamage()
person.displayCurrentHP()
print ("Major Damage!")
person.majorDamage()
person.displayCurrentHP()
print ("Major Damage!")
person.majorDamage()
person.displayCurrentHP()
print ("Major Damage!")
person.majorDamage()
person.displayCurrentHP()
print ("Major Damage!")
person.majorDamage()
person.displayCurrentHP()
print ("Major Damage!")
person.majorDamage()
person.displayCurrentHP()
print ("\n__________Tasks_Complete__________")



