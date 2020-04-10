//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by joao camargo on 02/02/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain
{
    
    var bmi: Float?
    
    mutating func calculateBMI(height:Float,weight:Float)
    {
        bmi = weight / (height * height)
    }
    
    func getBMIValue() -> String
    {
        let bmiTo1DecimalPlace = String(format:"%1.f",bmi ?? 0)
        return bmiTo1DecimalPlace
    }
}
