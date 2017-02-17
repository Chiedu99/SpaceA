//
//  PlanerySystem.swift
//  SpaceAdventure
//
//  Created by Cheidu on 2/14/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation

class PlanetarySystem {
    let name: String
    var planets : [Planet]
    var randomPlanet: Planet?{
        if planets.isEmpty {
            return nil
        }else {
            let index = Int(arc4random_uniform(UInt32(planets.count)))
            return planets[index]
        }
    }

    init(name:String, planets : [Planet]){
        self.name = name
        self.planets = planets
            }
    
}
