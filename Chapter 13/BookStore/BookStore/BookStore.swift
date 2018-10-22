//
//  BookStore.swift
//  BookStore
//
//  Created by Thorn on 7/27/17.
//  Copyright © 2017 Innovativeware. All rights reserved.
//

import Foundation

class BookStore {
    var bookList: [Book] = []
    
    init() {
        var newBook = Book()
        newBook.title = "Swift for Absolute Beginners"
        newBook.author = "Bennett and Lees"
        newBook.description = "iOS Programming made easy"
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Farewell to Arms"
        newBook.author = "Ernest Hemingway"
        newBook.description = "The story of an affair between an English nurse and an American soldier on the Italian front during World War I."
        bookList.append(newBook)
    }
}
