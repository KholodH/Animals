
//First, create a class called Animal
class Animal{
    //Give Animal a property "name"
    var name:String
    //Give Animal a property "health" with a default value of 100
    var health = 100
    // Give Animal an init that takes in a name 
    init(name:String){
        self.name=name
    }
    // Give the animal a displayHealth method
    func displayHealth (){
    print("My health is \(health)")
    }
    
}
// Next, create a subclass of Animal called Cat
class Cat: Animal {
    // Give the Cat a method "growl" that prints to the screen "Rawr!"
        // Modify the Cat's health to be 150
    override init(name: String) {
        super.init(name: name)
        health = 150
    }
    // Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health
    func run (){
        print("Running")
    }
        func growl (){
            print("Rawr!")
        health -= 10
    }
    }
// Next, create two subclasses of Cat - Cheetah and Lion
class Cheetah: Cat{
    
    // Override the Cheetah's run method to print "Running Fast" and deduct 50 health 
    override func run() {
        if health == 0{
            print("No health")
            
        }
        else {
        print("Running Fast!")
        health -= 50 }
    }
    // Add a sleep function to the Cheetah class that adds 50 health, make sure its health doesn't go over 200.
    func sleep (){
        if health < 200 {
            health += 50
        }
    }
    
}

class Lion: Cat{
    override func growl() {
        // Override the growl method of the Lion to make it print "ROAR!!!! I am the King of the Jungle"
        print("ROAR!!!! I am the King of the Jungle")
    }
    // Override Lion's health to be 200
    override init(name: String) {
        super.init(name: name)
        health = 200
    }
}

//  Create a Cheetah. Have the Cheetah run 4 times.
var cheetah = Cheetah(name: "Bagera")
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.run()


//  Display the Cheetah's health. Now modify the Cheetah's run method so that it cannot run if it does not have the required health.
cheetah.displayHealth()

//  
//  Create a Lion. Have the Lion run 3 times. Have the Lion growl.
var lion = Lion(name: "Simba")
lion.run()
lion.run()
lion.run()
lion.growl()
