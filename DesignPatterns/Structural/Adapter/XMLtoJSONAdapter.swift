//
//  XMLtoJSONAdapter.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 23/01/23.
//

import Foundation

class XMLtoJSONAdapter: Chart {
    
    let analyticsLibrary: AnalyticsLibrary
    init(analyticsLibrary: AnalyticsLibrary) {
        self.analyticsLibrary = analyticsLibrary
    }
    
    func displayCharts(data: XML) {
        let xmltojsondata = "conversion logic of xml to json"
        analyticsLibrary.displayAnalyzedCharts(data: xmltojsondata)
        print("successfully created charts using json data")
    }
}
