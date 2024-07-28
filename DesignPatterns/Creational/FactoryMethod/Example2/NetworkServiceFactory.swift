//
//  NetworkServiceFactory.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 7/28/24.
//

import Foundation

enum NetworkServiceType {
  case real
  case mock
}

class NetworkServiceFactory {
  func createNetworkServiceFactory (type: NetworkServiceType) -> NetworkService {
    switch type {
    case .real:
      RealNetworkService()
    case .mock:
      MockNetworkService()
    }
  }
}
