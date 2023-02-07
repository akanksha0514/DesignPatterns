//
//  BurgerBuilder.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 19/01/23.
//

import Foundation

class BurgerBuilder {
    private var veggieProduct = true
    private var ketchup = true
    private var mayo = true
    private var cooked = Cooked.Normal
    
    func set(isVeggie: Bool) {
        self.veggieProduct = isVeggie
    }
   
    func set(ketchup: Bool) {
        self.ketchup = ketchup
    }
    
    func set(mayo: Bool) {
        self.mayo = mayo
    }
    
    func set(cooked: Cooked) {
        self.cooked = cooked
    }
    
    func buildBurger(name: String) -> Burger {
        return Burger(customerName: name, veggieProduct: self.veggieProduct, ketchup: self.ketchup, mayo: self.mayo, cooked: self.cooked)
    }
}
