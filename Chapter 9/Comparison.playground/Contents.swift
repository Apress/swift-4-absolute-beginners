//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//print("Hello World")

print("The result is \(6 > 5 ? "True" : "False")")

var i = 5
var y = 6
print("The result is \(y > i ? "True" : "False")")


// Today's Date
let today = Date()

// Sale Date = Tomorrow
let timeToAdd: TimeInterval = 60*60*24
let saleDate: Date = today.addingTimeInterval(timeToAdd)

var saleStarted = false
let result: ComparisonResult  = today.compare(saleDate)

switch result {
case ComparisonResult.orderedAscending:
    // Sale Date is in the future
    saleStarted = false
case ComparisonResult.orderedDescending:
    // Sale Start Date is in the past so sale is on
    saleStarted = true
default:
    // Sale Start Date is now
    saleStarted = true
}
