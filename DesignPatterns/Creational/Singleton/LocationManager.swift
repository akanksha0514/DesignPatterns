//
//  LocationManager.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 23/01/23.
//

import Foundation

class LocationManager {
    static let shared = LocationManager()
    private init() {
    }
    
    func requestLocation(location: String) -> String  {
        return "Location access granted"
    }
}
