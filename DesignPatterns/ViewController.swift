//
//  ViewController.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 19/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        //Builder Design Pattern
        print("-------------Builder-------------")
        let burgerBuilder = BurgerBuilder()
        burgerBuilder.set(cooked: .OverCooked)
        burgerBuilder.set(mayo: false)
        let burgerOrder = burgerBuilder.buildBurger(name: "Akanksha")
        burgerOrder.printDesc()
        
        //Facade design Pattern
        print("------------Facade--------------")
        let dvd = DVD()
        let projector = Projector(dvdPlayer: dvd, isOn: true)
        let amp = Amplifier(dvd: dvd, projector: projector, isPopcornReady: true)
        let popcorn = PopcornPopper()
        let homeTheaterMovie = HomeTheaterFacade(dvd: dvd, amp: amp, projector: projector, popcorn: popcorn)
        homeTheaterMovie.watchMovie(movie: "DDLJ")
                
        //Decorator Pattern
        print("------------Decorator--------------")
        let raceCar = RaceCar()
        let defaultSpeed = raceCar.getSpeed()
        let defaultTraction = raceCar.getTraction()
        
        print("Default race car speed \(defaultSpeed) and default traction \(defaultTraction)")
        
        //Modify race car
        let offRoadRaceCar = OffRoadRaceCarDecorator(transportable: raceCar)
        let offRoadCarSpeed = offRoadRaceCar.getSpeed()
        let offRoadTraction = offRoadRaceCar.getTraction()
        print("OffRoad race car speed \(offRoadCarSpeed) and traction \(offRoadTraction)")
        
        //Chained decorator Race car
        let chainedRaceCarDecorator = ChainedRaceCarDecorator(transportable: offRoadRaceCar)
        let chainedRaceCarDecoratorSpeed = chainedRaceCarDecorator.getSpeed()
        let chainedRaceCarDecoratorTraction = chainedRaceCarDecorator.getTraction()
        print("Chained race car speed \(chainedRaceCarDecoratorSpeed) and traction \(chainedRaceCarDecoratorTraction)")
        
        
        print("------------Observer--------------")
        let auctioneer = Auctioneer()
        let inPersonBidder = InPersonBidder(id: 1, auctioneer: auctioneer)
        let onlineBidder = OnlineBidder(id: 2, auctioneer: auctioneer)
        auctioneer.notifyBidder(bid: 10.0)
        
        print("------------FactoryMethod--------------")
        let profileViewFactory = ProfileViewFactory()
        let profileView = profileViewFactory.getProfileView(profileType: .privileged)
        profileView?.setProfileDetails()
        
        print("------------Singleton--------------")
        let singletonCalculator = Calculator.shared.add(firstNumber: 10, secondNumber: 20)
        print("SingleTon sum of two numbers using calculator \(singletonCalculator)")
        
        let locationManager = LocationManager.shared.requestLocation(location: "Xcode")
        print("Location manager  \(locationManager)")
        
        print("------------Adapter--------------")
        
        let dataDownloadXML = StockDataProvider()
        let xmlData = dataDownloadXML.downloadData()
        
        print("Without Adapter")
        let chartCoreClass = ChartCoreClass()
        chartCoreClass.displayCharts(data: xmlData)
        print("With Adapter")
        let analyticsLibrary = AnalyticsLibrary()
        let xmlToJsonAdapter = XMLtoJSONAdapter.init(analyticsLibrary: analyticsLibrary)
        xmlToJsonAdapter.displayCharts(data: xmlData)
        

        
    }


}

