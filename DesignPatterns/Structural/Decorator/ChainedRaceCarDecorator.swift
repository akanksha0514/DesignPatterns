//
//  ChainedRaceCarDecorator.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 21/01/23.
//

import Foundation

class ChainedRaceCarDecorator: Transporting {
    
    private let transportable: Transporting
    
    init(transportable: Transporting) {
        self.transportable = transportable
    }
    
    func getSpeed() -> Double {
        return transportable.getSpeed() - 5.0
    }
    
    func getTraction() -> Double {
        return transportable.getTraction() - 5.0
    }
}
