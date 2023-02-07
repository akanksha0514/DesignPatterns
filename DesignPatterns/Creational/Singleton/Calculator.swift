//
//  Calculator.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 23/01/23.
//

import Foundation

class Calculator {
    static let shared = Calculator() // marked static: as static properties and methods are not initalised until it's called for the first time, the initializers of global variables  and static properties are executed lazily by default
    
    private init() {} // marked private because we need to make sure that no other class can instantiate it
    func add (firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}
