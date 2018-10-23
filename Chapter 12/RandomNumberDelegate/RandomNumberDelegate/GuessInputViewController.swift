//
//  GuessInputViewController.swift
//  RandomNumberDelegate
//
//  Created by Stefan Kaczmarek on 9/24/17.
//  Copyright © 2017 The Zonie, LLC. All rights reserved.
//

import UIKit

// protocol used to send data back to the home view controller's userDidFinish
protocol GuessDelegate {
    func userDidFinish(_ controller:GuessInputViewController, guess: String)
}

class GuessInputViewController: UIViewController,  UITextFieldDelegate {
    var delegate: GuessDelegate? = nil
    var previousGuess: String = ""

    @IBOutlet weak var guessLabel: UILabel!
    @IBOutlet weak var guessTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if(!previousGuess.isEmpty) {
            guessLabel.text = "Your previous guess was \(previousGuess)"
        }
        guessTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveGuess(_ sender: AnyObject) {
        if let delegate = delegate, let guessText = guessTextField.text {
            delegate.userDidFinish(self, guess: guessText)
        }
    }
}
