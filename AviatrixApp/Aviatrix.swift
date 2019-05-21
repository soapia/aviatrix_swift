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
    
    // STEP TWO: ADD PILOT NAME AND INITIALISER
    var author = ""
    init(pilotName: String) {
        author = pilotName
    }
    
    // STEP ONE: CHANGE RUNNING, START AT FALSE
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        
    }
    
    func distanceTo(target : String) {
    
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis"]
    }
}
