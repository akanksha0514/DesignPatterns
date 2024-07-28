//
//  NetworkService.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 7/28/24.
//

import Foundation

protocol NetworkService {
  func fetchData(completion: @escaping (Result<Data, Error>) -> ())
}
