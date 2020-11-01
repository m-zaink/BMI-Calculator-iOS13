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
            return .systemYellow
        } else if bmi >= 18.0 && bmi <= 25.0 {
            return .systemGreen
        } else {
            return .systemRed
        }
    }
}
