//
//  main.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

func gauges(plane : Aviatrix) {
    print("Reading the gauges...")
    print(" ")
//    print("| Location:  | \(plane.location)")
//    print("| Fuel:      | \(plane.fuelLevel) gallons")
//    print("| Max Fuel:  | \(plane.maxFuel) gallons")
//    print("| MPG:       | \(plane.milesPerGallon)")
//    print("| Fuel Bill: | \(plane.fuelCost)")
//    print("| Distance:  | \(plane.distanceTraveled) miles")
}

func fly(plane : Aviatrix) {
    print("Where would you like to fly to? ")
    print(" ")
    let destinations = plane.knownDestinations()
    
    for (index, city) in destinations.enumerated() {
        let distance = plane.distanceTo(target: city)
        print("\(index): \(city), \(distance) miles")
    }
    
    let response = Int(readLine()!)
//    let desiredDestination = plane.knownDestinations()[response!]
    
    //if (raw_input == number.to_s) && (0...destinations.count).include?(number)
    // insert logic to make sure the number was valid
    print("🛫 Preparing for takeoff...")
    print("Flying...")
    
//    if fuelCheck(plane: plane, destination : desiredDestination) == true {
//        plane.flyTo(destination: desiredDestination)
//        // call fuel check function, in this file.
//        print("🛬 You've arrived in ______!")
//        gauges(plane: plane)
//    }
}

func refuel(plane : Aviatrix) {
    let refuelData = plane.refuel()
    
    print("Refueling...")
    print("⛽ Here in ___, jet fuel costs _____")
    print("⛽ You refueled ____ gallons totaling $_____")
}

func fuelCheck(plane : Aviatrix, destination : String) -> Bool {
//    let distanceToTravel =  Double(plane.distanceTo(target : destination))
//    if plane.fuelLevel < distanceToTravel {
//        print(" ")
//        print("🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥")
//        print("Oh no! You've run out of fuel and crashed on the way to ___!")
//        print("🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥")
//
//        return false
//    } else {
//        return true
//    }
    return true
}

var av = Aviatrix()

print("Welcome to the Aviatrix Flight System by ______")
av.start()

print("You're currently in ______")

var command = ""

while command != "q" {
    print(" ")
    print("What would you like to do?")
    print("a) 📊 check the plane gauges")
    print("b) 🛫 fly to a different city")
    print("c) ⛽ refuel")
    print("q) ❌ quit")
    print(" ")
    print("Action: ")
    command = readLine()!
    
    if command == "a" {
        gauges(plane: av)
    }
    else if command == "b" {
        fly(plane: av)
    }
    else if command == "c" {
        refuel(plane: av)
    }
    else if command != "q" {
        print("Please enter a valid command!")
    }
}

print(" ")
print("Thanks for flying with ________ airline!")

