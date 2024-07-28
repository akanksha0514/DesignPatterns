//
//  MockNetworkService.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 7/28/24.
//

import Foundation
class MockNetworkService: NetworkService {
  func fetchData(completion: @escaping (Result<Data, Error>) -> ()) {
    // This is mock implementation of network fetch data
    let mockData = Data() // Replace with actual mock data
    print("Fetching mock data...")
    completion(.success(mockData))
  }
}
