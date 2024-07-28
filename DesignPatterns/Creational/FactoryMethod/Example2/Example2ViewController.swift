//
//  Example2ViewController.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 7/28/24.
//

// This can be moved to coordinators based on what is the structure of your project
import Foundation
class Example2ViewController: ViewController {
  private var viewmodel: ViewModel!
  
  override func viewDidLoad() {
    // For real network requests
    let networkServiceFactory = NetworkServiceFactory()
    viewmodel = ViewModel(factory: networkServiceFactory, serviceType: .real)
    
    // For creating mock
    viewmodel = ViewModel(factory: networkServiceFactory, serviceType: .mock)
  }
  
}
