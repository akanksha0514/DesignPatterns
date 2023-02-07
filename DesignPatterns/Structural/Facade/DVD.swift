//
//  DVD.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 21/01/23.
//

import Foundation

class DVD {
    var movie: String = ""
    func on() {
        print("DVD Player on")
    }
    
    func play(_ movie: String) {
          self.movie = movie
          print("DVD PLayer playing \"\(movie)\"")
      }
}
