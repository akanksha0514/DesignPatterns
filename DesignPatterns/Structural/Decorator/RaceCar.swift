//
//  RaceCar.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 21/01/23.
//

import Foundation

protocol Transporting {
    func getSpeed() -> Double
    func getTraction() -> Double
}

final class RaceCar: Transporting {
    private let speed = 10.0
    private let traction = 10.0
    func getSpeed() -> Double {
        return speed
    }
    
    func getTraction() -> Double {
        return traction
    }
}
