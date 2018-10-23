//
//  AddBookViewController.swift
//  BookStore
//
//  Created by Stefan Kaczmarek on 9/28/17.
//  Copyright © 2017 The Zonie, LLC. All rights reserved.
//

import UIKit

protocol BookStoreDelegate {
    func newBook(_ controller: AnyObject, newBook: Book)
    func editBook(_ controller: AnyObject, editBook: Book)
    func deleteBook(_ controller: AnyObject)
}

class AddBookViewController: UIViewController {
    var book = Book()
    var delegate: BookStoreDelegate?
    var read = false
    var editBook = false

    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var authorText: UITextField!
    @IBOutlet weak var pagesText: UITextField!
    @IBOutlet weak var switchOutlet: UISwitch!

    @IBOutlet weak var descriptionText: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if editBook == true {
            self.title = "Edit Book"
            titleText.text = book.title
            authorText.text = book.author
            pagesText.text = String(book.pages)
            descriptionText.text = book.description
            if book.readThisBook {
                switchOutlet.isOn = true
            }
            else {
                switchOutlet.isOn = false
            }
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveBookAction(_ sender: UIButton) {
        book.title = titleText.text!
        book.author = authorText.text!
        book.description = descriptionText.text
        if let text = pagesText.text, let pages = Int(text) {
            book.pages = pages
        }
        if switchOutlet.isOn {
            book.readThisBook = true
        } else {
            book.readThisBook = false
        }
        if (editBook) {
            delegate?.editBook(self, editBook:book)
        } else {
            delegate?.newBook(self, newBook:book)
        }
    }
}

