//
//  FloatExtension.swift
//  BMI Calculator
//
//  Created by Mohammed Sadiq on 01/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

extension Float {
    var toTwoDecimalPlaces: Float {
        get {
            return Float(String(format: "%.2f", self))!
        }
    }
}
