//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Eric Levine on 11/9/14.
//  Copyright (c) 2014 Eric Levine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextBox: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        // let declares constant, convert to integer, then get rid of optional with ! leaves us with true integer
        let humanYrs = humanYearsTextBox.text.toInt()!
        let dogMultiplier = 7
        var dogYrs = humanYrs * dogMultiplier
        dogYearsLabel.text = "\(dogYrs)"
        dogYearsLabel.textColor = UIColor.purpleColor()
        dogYearsLabel.hidden = false
        humanYearsTextBox.text = ""
        humanYearsTextBox.resignFirstResponder()
        
    }
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let humanYrs = Double((humanYearsTextBox.text as NSString).doubleValue)
        var dogYrs:Double
        if (humanYrs > 2) {
           dogYrs = (10.5 * 2) + ((humanYrs - 2) * 4)
        } else {
            dogYrs = humanYrs * 10.5
        }
        dogYearsLabel.text = "\(dogYrs)"
        dogYearsLabel.hidden = false
        humanYearsTextBox.text = ""
        humanYearsTextBox.resignFirstResponder()
    }

}

