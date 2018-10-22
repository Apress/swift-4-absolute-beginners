//
//  RadioStation.swift
//  RadioStations
//
//  Created by Thorn on 7/24/17.
//  Copyright © 2017 Innovativeware. All rights reserved.
//

import UIKit

class RadioStation: NSObject {
    
    var name: String
    var frequency: Double
    
    override init() {
        name = "Default"
        frequency = 100
    }
    
    static var minAMFrequency: Double = 520.0
    
    static var maxAMFrequency: Double = 1610.0
    
    static var minFMFrequency: Double = 88.3
    
    static var maxFMFrequency: Double = 107.9
    
    func isBandFM() -> Int {
        if frequency >= RadioStation.minFMFrequency && frequency <= RadioStation.maxFMFrequency {
            return 1 //FM
        } else {
            return 0 //AM
            
        }
        
    }
}
