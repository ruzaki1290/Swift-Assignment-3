import UIKit

// Assignment-3


// 1. Create a super class named Ship

// 2. Create a subclass named CruiseShip

// 3. Create a subclass named CargoShip

// 4. Create a subclass named PirateShip

// Note: Add all the necessary details specified in the Assignment-3 Agenda!

// 5. Create an instance of 1 of the subclasses and using print statements, demonstrate the use of all the properties and methods of that class, as well as the superclass.

// Note: When you add passengers, cargo, or treasure, you should not be able to add than a max capacity, but the property should exceed the max capacity as well; it should just work with a quantity of 1(as in add 1 passenger, 1 cargo, 1 treasure) to make it simple.


// 1. Super class Ship
class Ship {
    let name: String
    let year: Int
    let countryOfOrigin = ["Britain 🇬🇧", "France 🇫🇷", "Russia 🇷🇺"]
    
    // method initializer
    init(name: String, year: Int) {
        self.name = name
        self.year = year
    }
    
}


// 2. Subclass CruiseShip
class CruiseShip: Ship {
    var maxCapacity: Int
    var oceanOfOpearion: String
    var currentPassengerCount: Int
    
    init() {
        self.maxCapacity = 1
        self.oceanOfOpearion = "Pacific ocean"
        self.currentPassengerCount = 2
        super.init(name: "Admiral Nakhimov", year: 1890)
    }
    
    func printInfo() {
        print("I am \(name), year: \(year), country of origin: \(countryOfOrigin[2])")
        print("I am currently sailing in the \(oceanOfOpearion)")
    }
    
    func addPassanger() {
        if (self.currentPassengerCount + 1 > self.maxCapacity) {
            print("The ship is OVER MAX capacity!!! 😱 Max capacity is \(maxCapacity)! 😡")
        } else {
            self.currentPassengerCount += 1
            print("There are currently \(currentPassengerCount) passanger(s) on board and the ship capacity is at \(maxCapacity) 😌")
        }
    }
}

let cruiseShip = CruiseShip()
//cruiseShip.printInfo()
//cruiseShip.addPassanger()


// 3. Subclass CargoShip
class CargoShip: Ship {
    var maxCapacity: Int
    var currentCargoCount: Int
    var isInternational: Bool
    
    init() {
        self.maxCapacity = 1
        self.currentCargoCount = 2
        self.isInternational = true
        super.init(name: "Voyager", year: 1879)
    }
    
    func printInfo() {
        print("I am \(name), year: \(year), country of origin: \(countryOfOrigin[1])")
    }
    
    // This function shows whether the ship is allowed to sail into International waters
    func intSail() {
        if(self.isInternational == true) {
            print("This is ship allowed to sail into international waters! ✅")
        } else {
            print("This ship limited to sail close to home shores only! ⛔️")
        }
    }
    
    func addCargo() {
        if (self.currentCargoCount + 1 > self.maxCapacity) {
            print("The ship is OVERLOADED!!! 🤯 Max capacity is \(maxCapacity)! 😤")
        } else {
            self.currentCargoCount += 1
            print("There is currently \(currentCargoCount) cargo on board and ship's capacity is at \(maxCapacity) 🫡")
        }
    }
}

let cargoShip = CargoShip()
//cargoShip.printInfo()
//cargoShip.addCargo()
//cargoShip.intSail()


// 4. Subclass PirateShip
class PirateShip: Ship {
    var maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCannons: Int
        
    init() {
        self.maxTreasureCapacity = 1
        self.currentTreasureCount = 1
        self.numberOfCannons = 96
        super.init(name: "Black Pearl", year: 1809)
    }
    
    func printInfo() {
        print("I am \(name), year: \(year), country of origin: \(countryOfOrigin[0])")
        print("We will give em a warm welcome with our \(numberOfCannons) cannons! 😁💥")
    }
    
    func addTreasure() {
        if(self.currentTreasureCount > self.maxTreasureCapacity) {
            print("The ship is OVERLOADED!!! 😬 Your greed will kills us captain! 🤬")
        } else if(self.currentTreasureCount == self.maxTreasureCapacity) {
            print("That's a good loot captain! 😃 We are at full capacity of \(maxTreasureCapacity) 😁")
        } else {
            self.currentTreasureCount < self.maxTreasureCapacity
            print("We are at capacity of \(currentTreasureCount) 🙂 There is still room for more treasure! 🏴‍☠️")
        }
    }
}

let pirateShip = PirateShip()
pirateShip.printInfo()
pirateShip.addTreasure()
