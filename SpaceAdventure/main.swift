/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation
let planetData = [ "mercury":"second planet from the sun. poisonous, atmosphere", "venus":"a very hot planet, close to the sun", "earth": "Third planet from the sun, Home sweet Home", "mars": "fourth planet from the sun, Matt Damon goes there.", "jupiter": "The largest planet in the solar system, a gas giant.", "saturn": "This planet has rings", "uranus": "It's not what it sounds like", "Neptune":"The coldest planet, far away from the sun"]


let systemName = "Solar System"
let planets = planetData.map { name, description in
    Planet( name: name, description: description)
}

let solarSystem = PlanetarySystem(name: systemName, planets: planets)
let adventure = SpaceAdventure(planetrySystem:solarSystem)
adventure.start()







