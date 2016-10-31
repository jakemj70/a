//
//  ResultsViewController.swift
//  Quiz
//
//  Created by Jake Johnson on 10/31/16.
//  Copyright © 2016 Jake Johnson. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {


    override func viewDidLoad() {
        print("ResultsViewController")
        numberLabel.text = "\(21 - numberIncorrect) /21"

    }
    @IBOutlet var numberLabel: UILabel!

    let resultsTextView = UITextView()

    @IBAction func ResultsButton(_ sender: Any) {
        
        
        resultsTextView.text = incorrectString
        
        resultsTextView.frame = CGRect(x: view.frame.width * 0.05, y: view.frame.height * 0.1, width: view.frame.width * 0.9, height: view.frame.height / 2)
        
        
        view.addSubview(resultsTextView)
        
        
        
    }

}//end class
