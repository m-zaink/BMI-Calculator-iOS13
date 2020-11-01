//
//  UserMeasurements.swift
//  BMI Calculator
//
//  Created by Mohammed Sadiq on 01/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct UserMeasurements {
    var height: Float
    var weight: Float
    
    var bmi: Float {
        if height == 0.0 {
            return 0.0
        } else {
            return Float(weight / (height * height)).toTwoDecimalPlaces
        }
    }
}
