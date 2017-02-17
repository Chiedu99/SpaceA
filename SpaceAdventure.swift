//
//  SpaceAdventure.swift
//  SpaceAdventure
//
//  Created by Cheidu on 2/10/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation
class SpaceAdventure {
    let planetarySystem = PlanetarySystem(name: "Solar System", planets: [Planet]())
    init(planetrySystem:PlanetarySystem){
            }

    func start() {
        displayIntroduction()
        greetAdventurer()
        print("Do you want to go on an Adventure?")
        determineDestination()
  }

    
            
            
    private func displayIntroduction(){
        print("Hello, World!")
        
        print("welcome to \(planetarySystem.name)")
        print("this solar system has \(planetarySystem.planets.count) planets")
    }
            
                
    private func greetAdventurer(){
        let name = responseToPrompt(prompt: "What is your Name?")
        print("Hello, \(name), my name is chiedu")
    }
            
    private func responseToPrompt(prompt: String) -> String{
            print(prompt)
            return getln()
    }
    
    private func determineDestination(){
        var decision = ""
        while !(decision == "Y" || decision == "N") {
            decision = responseToPrompt(prompt: "Shall I choose a planet for you?")
            if decision == "Y"{
                if let planet = planetarySystem.randomPlanet {
                    visit(planetName: planet.name)
                } else {
                    print("sorry, but that planet is not in this solar system")
                }
            
            } else if decision == "N" {
                let planetName = responseToPrompt(prompt: "Ok, name the lanet you would like to visit")
                visit(planetName: planetName)
            } else {
                print("come on man you have to use Y or N.")
            }
    
        }
    }

    private func visit(planetName: String){
        print("traveling to \(planetName)...")
        for planet in planetarySystem.planets{
            if planetName == planet.name{
                print("Arrived at \(planet.name).\(planet.descrption)")
            }
        }
        
    }
}

