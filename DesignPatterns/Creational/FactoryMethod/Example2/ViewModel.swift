//
//  ViewModel.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 7/28/24.
//

import Foundation
class ViewModel {
  private let networkService: NetworkService
  
  init(factory: NetworkServiceFactory, serviceType: NetworkServiceType) {
    self.networkService = factory.createNetworkServiceFactory(type: serviceType)
  }
  
  func fetchData() {
      networkService.fetchData { result in
          switch result {
          case .success(let data):
              print("Data received: \(data)")
          case .failure(let error):
              print("Error occurred: \(error)")
          }
      }
  }
}
