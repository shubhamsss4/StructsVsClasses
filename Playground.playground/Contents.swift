import UIKit

var str = "Hello, playground"

    /// CLASSES vs STRUCTS


// Classes dont provide memberwise initializers

class Dog {
    var name: String
    var breed: String
    
    init(name: String,breed: String) {
        self.name = name
        self.breed = breed
    }
}

let dog = Dog(name:"Puppy",breed: "German Shephard")

// Structs cannot be inherited

class GermanShephard: Dog {
    init(name: String) {
        super.init(name: name, breed: "German Shephard")
    }
}

// Structs when copied create new copy however classes on copy refer to the same
// classes are reference types
// structs are value types

class Cricketer {
    var name = "Virat Kohli"
}

var cricketer = Cricketer()
print(cricketer.name)

var anotherCricketer = cricketer
anotherCricketer.name = "Sachin Tendulkar"

print(cricketer.name)


// Classes can have deinit methods which gets called when the object gets destroyed

class Person {
    var name = "Alice"
    
    init() {
        print("\(name) is born")
    }
    
    func greet() {
        print("Hello I am \(name)")
    }
    
    deinit {
        print("\(name) is no more")
    }
}

for _ in 1...3 {
    let person = Person()
    person.greet()
}



// Constant class with variable property can be changed
// classes dont need the mutating keyword for changing properties
// Constant struct with a variable property can’t be changed because the struct itself is constant.
class Singer {
    var name = "Taylor Swift"
}

let singer = Singer()
singer.name = "Justin Bieber"
print(singer.name)

//struct lightweight and clean and hence better performance as compared to classes if you dont need inheritance

