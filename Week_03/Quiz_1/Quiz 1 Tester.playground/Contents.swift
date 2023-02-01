struct Person {

  let firstName: String
  let lastName: String
 
  func sayHello() {
    print("Hello there! My name is \(firstName) \(lastName).")
  }
}

let artie = Person(firstName: "Artie", lastName: "Kuhn")
artie.sayHello()

let dog = "Everest"

if(dog == "Everest") {
     print("Your dog is named Everest!")
}
