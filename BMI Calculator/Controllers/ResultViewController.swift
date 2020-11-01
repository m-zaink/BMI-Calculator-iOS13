//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Mohammed Sadiq on 01/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    var bmi: Float!
    var adviceBasedOnBmi: String!
    var colorBasedOnBmi: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = String(bmi)
        adviceLabel.text = adviceBasedOnBmi
        view.backgroundColor = colorBasedOnBmi
    }
    
    @IBAction func reCalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
