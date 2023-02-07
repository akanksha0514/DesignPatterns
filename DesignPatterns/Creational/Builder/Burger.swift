//
//  Burger.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 19/01/23.
//

import Foundation

enum Cooked: String {
    case Normal = "normal"
    case UnderCooked = "undecooked"
    case OverCooked = "overcooked"
}

struct Burger {
    let customerName: String?
    let veggieProduct: Bool?
    let ketchup: Bool?
    let mayo: Bool?
    let cooked: Cooked?
    
    init(customerName: String?, veggieProduct: Bool?, ketchup: Bool?, mayo: Bool?, cooked: Cooked?) {
        self.customerName = customerName
        self.veggieProduct = veggieProduct
        self.ketchup = ketchup
        self.mayo = mayo
        self.cooked = cooked
    }
    
    func printDesc() {
        print("Customer name ", self.customerName, " made a burger, is that a veggie " , self.veggieProduct, " with mayo ", self.mayo, " and ketchup ", self.ketchup, " but its is " ,self.cooked)
    }
    
}
