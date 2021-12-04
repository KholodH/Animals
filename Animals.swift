    //First, create a class called Animal
class Animal {
    //Give Animal a property "name"
  var name:String
    //Give Animal a property "health" with a default value of 100
  var health: Int = 100

    // Give Animal an init that takes in a name 
  init(name:String){
    self.name=name
  }
    // Give the animal a displayHealth method
  func displayHealth () -> Animal {
    print("health is: \(health)")
  }

}
    // Next, create a subclass of Animal called Cat
class Cat: Animal {
    // Give the Cat a method "growl" that prints to the screen "Rawr!"
  func growl () -> Cat {
    print("Rawr!")
  }
    // Modify the Cat's health to be 150
    override init(name: String) {
        super.init(name: name)
        health = 150
    }
    // Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health
    func run () -> Cat {
      print("Running")
      health -= 10
    }
}

    // Next, create two subclasses of Cat - Cheetah and Lion
    class Lion: Cat {
    // Override the growl method of the Lion to make it print "ROAR!!!! I am the King of the Jungle"
    override func growl() -> Lion {
      print("ROAR!!!! I am the King of the Jungle")
    }
        // Override Lion's health to be 200

        override init(name: String) {
        super.init(name: name)
        health = 200
    }
    }  
      //Class Cheetah:Cat
      class Cheetah: Cat {
        override func run() -> Cheetah {
          print ("Running Fast")
          health -= 50
        }
         func sleep () -> Cheetah{
          if health < 200{
            health += 50
          }

        }

    }
 
var cheata = Cheetah(name: "Cheetah")
for i in 1...4 {
  cheata.run()
}
cheata.displayHealth()

  
