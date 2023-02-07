//
//  Auctioneer.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 22/01/23.
//

import Foundation

class Auctioneer {
    var bidders = [Bidder]()
   
    func receiveBid(bid: Float) {
       notifyBidder(bid: bid)
    }
    
    func registerBidder(bidder: Bidder) {
        bidders.append(bidder)
    }
    
    func removeBidder(id: Int) {
        bidders.removeAll { bidder in
            bidder.id == id
        }
    }
    
    func notifyBidder(bid: Float) {
        for bidder in bidders {
            bidder.update(bid: bid)
        }
    }
}
