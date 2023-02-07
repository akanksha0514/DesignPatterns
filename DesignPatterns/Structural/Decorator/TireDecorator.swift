//
//  TireDecorator.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 21/01/23.
//

//ABSTRACT DECORATOR

import Foundation
class TireDecorator: Transporting {
    let tranportable: Transporting
    
    init(transportable: Transporting) {
        self.tranportable = transportable
    }
    
    func getSpeed() -> Double {
        return tranportable.getSpeed()
    }
    
    func getTraction() -> Double {
        return tranportable.getTraction()
    }
}
