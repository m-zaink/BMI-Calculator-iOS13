//
//  BmiBrain.swift
//  BMI Calculator
//
//  Created by Mohammed Sadiq on 01/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BmiBrain {
    private var userMeasurements: UserMeasurements = UserMeasurements(height: 0.0, weight: 0.0)
    
    var height: Float {
        set (height) {
            userMeasurements.height = height
        }
        
        get {
            userMeasurements.height
        }
    }
    
    var weight: Float {
        set (weight) {
            userMeasurements.weight = weight
        }
        
        get {
            userMeasurements.weight
        }
    }
    
    var bmi: Float {
        get {
            return userMeasurements.bmi
        }
    }
    
    var adviceBasedOnBmi: String {
        if bmi < 18.0 {
            return "Damn. Eat more and more 🍲"
        } else if bmi >= 18.0 && bmi <= 25.0 {
            return "Amazing. You're fit as a 🐯"
        } else {
            return "Perhaps eat a little less 🙏🏻"
        }
    }
    
    var colorBasedOnBmi: UIColor {
        if bmi < 18.0 {
            return #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        } else if bmi >= 18.0 && bmi <= 25.0 {
            return #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        } else {
            return #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }
    }
}
