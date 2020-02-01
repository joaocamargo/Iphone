//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Joao Camargo on 06/01/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue : String?
    var resultado = "0.0"

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        
        //view.backgroundColor = .red
        //let label = UILabel()
        //label.text = bmiValue
        //label.frame = CGRect(x:0,y:0,width: 100,height: 50)
        //view.addSubview(label)
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        let layout = ResultViewController()
        let navController = UINavigationController(rootViewController: CalculateViewController(collectionViewLayout: layout))
        window?.rootViewController = navController
        
        dismiss(animated: true, completion:nil)
        print("foi")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
