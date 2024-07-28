//
//  RealNetworkService.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 7/28/24.
//

import Foundation
class RealNetworkService: NetworkService {
  func fetchData(completion: @escaping (Result<Data, Error>) -> ()) {
    // this executes real network call using APIs
  }
}
