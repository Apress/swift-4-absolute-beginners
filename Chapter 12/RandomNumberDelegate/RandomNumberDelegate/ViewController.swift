//
//  ViewController.swift
//  RandomNumberDelegate
//
//  Created by Stefan Kaczmarek on 9/24/17.
//  Copyright © 2017 The Zonie, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GuessDelegate  {
    var previousGuess = ""
    var randomNumber = 0

    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        createRandomNumber()
        playAgainButton.isHidden = true
        resultLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // event triggered by playAgainButton
    @IBAction func playAgain(_ sender: Any) {
        createRandomNumber()
        playAgainButton.isHidden = true // only show the button when the user guessed the right #
        guessButton.isHidden = false // show the button
        resultLabel.text = ""
        userGuessLabel.text = "New Game"
        previousGuess = ""
    }

    // function called from the GuessInputViewController when the user taps on the Save Button button
    func userDidFinish(_ controller: GuessInputViewController, guess:  String) {
        userGuessLabel.text = "The guess was " +  guess
        previousGuess = guess
        let numberGuess = Int(guess)
        if (numberGuess! > randomNumber){
            resultLabel.text = "Guess too high"
        }
        else if (numberGuess! < randomNumber) {
            resultLabel.text = "Guess too low"
        }
        else {
            resultLabel.text = "Guess is correct"
            playAgainButton.isHidden = false //show the play again button
            guessButton.isHidden = true //hide the guess again number
        }
        // pops the GuessInputViewController off the stack
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }

    // creates the random number
    func createRandomNumber() {
        randomNumber = Int(arc4random_uniform(100)) //get a random number between 0-100
        print("The random number is: \(randomNumber)") //lets us cheat
        return
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if segue.identifier == "MyGuessSegue" {
            let vc = segue.destination as! GuessInputViewController
            vc.previousGuess = previousGuess // passes the previousGuess property to the GuessInputViewController
            vc.delegate = self
        }
    }
}

