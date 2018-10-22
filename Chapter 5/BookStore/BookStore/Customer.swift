//
//  Customer.swift
//  BookStore
//
//  Created by Thorn on 7/15/17.
//  Copyright © 2017 Innovativeware. All rights reserved.
//

import UIKit

struct Customer {
    var firstName = ""
    var lastName = ""
    var addressLine1 = ""
    var addressLine2 = ""
    var city = ""
    var state = ""
    var zip = ""
    var phoneNumber = ""
    var emailAddress = ""
    var favoriteGenre = ""
    
    func listPurchaseHistory() -> [String] {
        
        return ["Purchase 1", "Purchase 2"]
    }
    

}
