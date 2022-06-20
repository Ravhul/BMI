//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlideValue: UISlider!
    @IBOutlet weak var weightSlideValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightChangeEvent(_ sender: UISlider!) {
        heightLabel.text = String(format:"%.2f",sender.value) + "M";
    }
    
    
    @IBAction func weightChangeEvent(_ sender: UISlider) {
        weightLabel.text = String(format:"%.2f",sender.value) + "KG";
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let ht = Float(String(format:"%0.2f",heightSlideValue.value)) ?? 1;
        let wt = Float(String(format:"%0.0f",weightSlideValue.value)) ?? 1;
        
        let bmi = wt / pow(ht,2);
        print(bmi);
    }
}

