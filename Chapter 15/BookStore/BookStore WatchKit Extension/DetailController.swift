//
//  DetailController.swift
//  BookStore
//
//  Created by Thorn on 8/18/17.
//  Copyright © 2017 Innovativeware. All rights reserved.
//

import Foundation
import WatchKit


class DetailController: WKInterfaceController {
    @IBOutlet var labelTitle: WKInterfaceLabel!
    @IBOutlet var labelAuthor: WKInterfaceLabel!
    @IBOutlet var labelDescription: WKInterfaceLabel!
    
    var book: Book!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        if let book = context as? Book {
            labelTitle.setText(book.title)
            labelAuthor.setText(book.author)
            labelDescription.setText(book.description)
        }
    }
}
