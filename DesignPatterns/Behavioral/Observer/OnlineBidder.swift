//
//  OnlineBidder.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 22/01/23.
//

import Foundation
class OnlineBidder: Bidder {
 
    var id: Int
    private var subject: Auctioneer

    init(id: Int, auctioneer: Auctioneer) {
        self.id = id
        self.subject = auctioneer
        self.subject.registerBidder(bidder: self)
    }
    
    
    func update(bid: Float) {
        print("\"OnlineBuider\" there was an update in bid")
        if (bid >= 12.0) {
            self.subject.removeBidder(id: id)
        }
    }
}
