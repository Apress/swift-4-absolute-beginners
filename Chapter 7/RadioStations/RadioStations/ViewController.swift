//
//  ViewController.swift
//  RadioStations
//
//  Created by Thorn on 7/24/17.
//  Copyright © 2017 Innovativeware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationFrequency: UILabel!
    @IBOutlet weak var stationBand: UILabel!
    
    var myStation: RadioStation
    
    required init?(coder aDecoder: NSCoder) {
        
        myStation = RadioStation()
        myStation.frequency = 104.7
        myStation.name = "KZZP"
        super.init(coder: aDecoder)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(_ sender: Any) {
        stationName.text = self.myStation.name
        stationFrequency.text = "\(myStation.frequency)"
        if myStation.isBandFM() == 1 {
            stationBand.text = "FM"
        } else {
            stationBand.text = "AM"
        }
        
    }
    
}

