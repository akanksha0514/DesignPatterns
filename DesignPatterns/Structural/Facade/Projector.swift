//
//  Projector.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 21/01/23.
//

import Foundation

class Projector {
    var dvdPlayer: DVD
    var isOn: Bool
    
    init(dvdPlayer: DVD, isOn: Bool) {
        self.dvdPlayer = dvdPlayer
        self.isOn = isOn
    }
    
    func on() {
        print("Projector is \(isOn)")
    }
    
    func wideScreenMode() {
        print("make projector as wide screen")
    }
}
