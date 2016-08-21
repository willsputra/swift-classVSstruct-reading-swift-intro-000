class Giant {
    var name: String
    var weight: Double
    var homePlanet: String

    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")
fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"



struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")
bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"



let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"
print("edgar.name is \(edgar.name)")
print("jason.name is \(jason.name)")



var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"
print("charles.homePlanet is \(charles.homePlanet)")
print("charlesFromJupiter.homePlanet is \(charlesFromJupiter.homePlanet)")



struct BankAccount {
    var owner: String
    var balance: Double

    mutating func deposit(amount: Double) {
        balance += amount
    }

    mutating func withdraw(amount: Double) {
        balance -= amount
    }
}



var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)
print("joeAccount.balance is \(joeAccount.balance)")
print("joeOtherAccount.balance is \(joeOtherAccount.balance)")



class MusicLibrary {
    var tracks: [String]

    init() {
        tracks = []
    }

    func addTrack(track: String) {
        tracks.append(track)
    }
}

let library1 = MusicLibrary()
library1.addTrack("Michelle")
library1.addTrack("Voodoo Child")
let library2 = library1
library2.addTrack("Come As You Are")
print("library1.tracks is \(library1.tracks)")
print("library2.tracks is \(library2.tracks)")
