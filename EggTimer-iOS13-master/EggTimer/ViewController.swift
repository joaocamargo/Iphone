//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = "5"
    let mediumTime = "8"
    let hardTime = "12"
    
    @IBOutlet weak var lblResultado: UILabel!
    

    @IBAction func hardnesSelected(_ sender: UIButton) {
        print(sender.currentTitle!)

        let hardness = sender.currentTitle!
        
        var initialText = "How do you like your eggs?"
        
        //lblResultado.text = lblResultado.text! + "\n"+hardness
        
        if(sender.currentTitle! == "Soft")
        {
            lblResultado.text = initialText+"\n"+hardness+" leva em minutos: "+softTime
        }
        
        if(sender.currentTitle! == "Medium")
        {
            lblResultado.text = initialText+"\n"+hardness+" leva em minutos: "+mediumTime

        }
        
        if(sender.currentTitle! == "Hard")
        {
            lblResultado.text = initialText + "\n"+hardness+" leva em minutos: "+hardTime

        }
        
    }
    
}
