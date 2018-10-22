//
//  InterfaceController.swift
//  BookStore WatchKit Extension
//
//  Created by Thorn on 8/18/17.
//  Copyright © 2017 Innovativeware. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var mainTable: WKInterfaceTable!
    
    var myBookStore: BookStore = BookStore()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        configureTable()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func configureTable() {
        mainTable.setNumberOfRows(myBookStore.bookList.count, withRowType: "myBookRow")
        for index in 0...(myBookStore.bookList.count-1) {
            if let myRow = mainTable.rowController(at: index) as? BookRow {
                myRow.bookLabel.setText(myBookStore.bookList[index].title)
            }
        }
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
        return myBookStore.bookList[rowIndex]
    }
}

class BookRow: NSObject {
    @IBOutlet weak var bookLabel: WKInterfaceLabel!
}
