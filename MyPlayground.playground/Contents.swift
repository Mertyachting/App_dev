import UIKit



func greeting(name: String) {
    print("hello \(name)")
}

greeting(name: "mert")



//Defining a Struct
struct Town{
    let name = "Yachting City"
    var citizens = ["Mert", "Friends"]
    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
    
    func fortify () {
        print("Defences increased!")
    }
}

//Initialize a Struct

var myTown = Town()

print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain")


myTown.citizens.append("Spongebob")
print(myTown.citizens)

myTown.fortify()



struct Pokemon {
    let name : String
    var level : Int
    var evolution : [String : Int]
    var evolutionChain : [String]
    
    init(pokemonName: String, currentLevel : Int, whenEvolution:[String: Int], whoEvolve: [String] ) {
        name = pokemonName
        level = 0
        evolutionChain = whoEvolve
        evolution = whenEvolution
    }
    
    func Evolution() -> Void {
        print("You Evolved \(evolution)")
    }
}

var bisasam = Pokemon(pokemonName: "Bisasam", currentLevel: 12, whenEvolution: ["Bisknosp": 16], whoEvolve: ["Bisasam", "Bisaknosp", "Bisaflor"])

print(bisasam.Evolution())


