//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft":3,"Medium":4,"Hard":7]
    //var secondsRemaining = 60
    
   
    var totalTime=0
    var secondsPassed=0
    
    var timer = Timer()
    
    let softTime = "5"
    let mediumTime = "8"
    let hardTime = "12"
    
    @IBOutlet weak var lblResultado: UILabel!
    

    @IBAction func hardnesSelected(_ sender: UIButton) {
        print(sender.currentTitle!)
        progressBar.progress=0
        secondsPassed=0

        //progressBar.progress = 1.0

        let hardness = sender.currentTitle!
        lblResultado.text=hardness
        let initialText = "How do you like your eggs?"
        
        totalTime = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
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
    
    @objc func updateTimer()
    {
        if secondsPassed<totalTime {
            let percentProgress = Float(secondsPassed)/Float(totalTime)
            progressBar.progress = percentProgress
            print(percentProgress)
            secondsPassed+=1
        }
        else{
            timer.invalidate()
            lblResultado.text = "Done!"
            progressBar.progress = 1
        }
    }
    
}
