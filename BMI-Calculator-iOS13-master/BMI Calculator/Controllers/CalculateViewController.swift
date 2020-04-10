//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightCurrLabel: UILabel!
    @IBOutlet weak var weightCurrLabel: UILabel!
    var result: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        print(sender.value)
        heightCurrLabel.text = String(round(sender.value*100)/100)+"m"
    }
    
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        print(sender.value)
        let valorKg = String(format: "%.0f",round(sender.value))
        weightCurrLabel.text = valorKg+"kg"
    }
    
    @IBAction func CalculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height:height,weight:weight)

        result = weight / (height * height)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue() // String(format:"%.1f",result!)
        }
    }
    

    
    
    
    
}

