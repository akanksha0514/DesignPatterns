//
//  HomeTheaterFacade.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 21/01/23.
//

import Foundation

class HomeTheaterFacade {
    private let dvd: DVD
    private let amp: Amplifier
    private let projector: Projector
    private let popcorn: PopcornPopper
    
    init(dvd: DVD, amp: Amplifier, projector: Projector, popcorn: PopcornPopper) {
        self.dvd = dvd
        self.amp = amp
        self.projector = projector
        self.popcorn = popcorn
    }
    
    // MARK: Facade methods
    
    func watchMovie(movie: String) {
        print("Let's get ready to watch \"\(movie)\"")
        popcorn.on()
        popcorn.pop()
        dvd.on()
        dvd.play(movie)
        amp.setDvd(dvd)
        projector.on()
        amp.on()
    }
}
