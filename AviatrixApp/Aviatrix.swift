//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    
    var running = false
    // add max / fuel level
    let maxFuel = 5000.0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    // STEP 2: ADD PILOT NAME AND INITIALISER
    var author = ""
    // STEP: add distance travelled
    var distanceTraveled = 0
    init(pilotName: String) {
        author = pilotName
    }
    
    // STEP 1: CHANGE RUNNING, START AT FALSE
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
        let refuelAmount = maxFuel - fuelLevel
        fuelLevel = 5000.0
        return refuelAmount
    }
    
    func flyTo(destination : String) {
        // STEP: add to distance travelled, fuel level
        distanceTraveled += distanceTo(home: location, target: destination)
        fuelLevel -= Double(distanceTraveled)*milesPerGallon
        // STEP: store location in func
        location = destination
        milesPerGallon = 0.55 - (fuelLevel)*(0.00005)
        
    }
    
    // PROBLEM AREA: never actually defined a data variable as the tutorial suggests, but can do so here:
    var data = AviatrixData()
    // also not told about return value but they can figure that out
    
    // STEP 7: NEW VARIABLE LOCATION
    var location = "St. Louis"
    func distanceTo(home: String, target: String) -> Int {
        // STEP 6: ADD KNOWN DISTANCE
        return data.knownDistances[home]![target]!
    }
    
    func knownDestinations() -> [String] {
        // STEP 5: CHANGE KNOWN DESTINATIONS
        return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
