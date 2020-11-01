//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiBrain: BmiBrain = BmiBrain()
    
    override func viewDidLoad() {
        let height = heightSlider.value.toTwoDecimalPlaces
        let weight = weightSlider.value.rounded()
        
        bmiBrain.height = height
        bmiBrain.weight = weight
        
        updateHeightLabel(with: height)
        updateWeightLabel(with: weight)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == segueFromHomeVcToResultVC) {
            guard let resultViewController = segue.destination as? ResultViewController else {
                return
            }
            
            resultViewController.adviceBasedOnBmi = bmiBrain.adviceBasedOnBmi
            resultViewController.colorBasedOnBmi = bmiBrain.colorBasedOnBmi
            resultViewController.bmi = bmiBrain.bmi
        }
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = sender.value.toTwoDecimalPlaces
        
        bmiBrain.height = height
        updateHeightLabel(with: height)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = sender.value.rounded()
        
        bmiBrain.weight = weight
        updateWeightLabel(with: weight)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueFromHomeVcToResultVC, sender: self)
    }
    
    
    func updateHeightLabel(with height: Float) {
        heightLabel.text = String(height) + "m"
    }
    
    func updateWeightLabel(with weight: Float) {
        weightLabel.text = String(weight) + "kg"
    }
}

