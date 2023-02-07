//
//  Bidder.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 22/01/23.
//

import Foundation
protocol Bidder {
    var id: Int {get}
    func update(bid: Float) 
}
