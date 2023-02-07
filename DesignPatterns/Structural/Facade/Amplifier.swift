//
//  Amplifier.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 21/01/23.
//

import Foundation
class Amplifier {
    var dvd: DVD
    var projector: Projector
    var popcornReady: Bool
    
    init(dvd: DVD, projector: Projector, isPopcornReady: Bool) {
        self.dvd = dvd
        self.projector = projector
        self.popcornReady = isPopcornReady
    }
    
    func setDvd(_ dvd: DVD) {
        print("dvd is set to player \(dvd)")
    }
    
    func on() {
        print("Amplifier on")
    }
}
