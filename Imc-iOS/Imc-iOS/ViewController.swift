//
//  ViewController.swift
//  Imc-iOS
//
//  Created by Mañanas on 2/4/24.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet var heightTextField: UITextField!
    
    @IBOutlet var weightTextField: UITextField!
    
    
    @IBOutlet var calculateImc: UIButton!
    
    @IBOutlet var resultTextField: UITextField!
    
    @IBOutlet var slider: UISlider!
    
    @IBOutlet var stepperOne: UIStepper!
    
    @IBOutlet var imcresultTextField: UITextField!
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "CALCULADORA IMC"
        
        
    }
    
    
    
    @IBAction func calculateImc (_ sender: UIButton) {
        
        let weight: Double = Double (stepperOne.value)
        let height: Double = Double(slider.value)
        
        
        let result = weight / ((height / 100) * (height / 100))
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        imcresultTextField.text = formatter.string(from: NSNumber(floatLiteral:result))
        
        var descriptionResult : String?
        var descriptionColor: UIColor?
        
        switch result {
        case 0.0 ... 18.5 :
            descriptionResult = "Under Weight"
            descriptionColor = getColor(forKey: "under weight")
        case 18.5 ... 24.9 :
            descriptionResult = "Normal Weight"
            descriptionColor  = getColor(forKey: "normal weight")
        case 24.9 ... 29.9 :
            descriptionResult =  "Over Weight"
            descriptionColor = getColor(forKey: "over weight")
        default:
            descriptionResult = "Obesity"
            descriptionColor = getColor(forKey: "obesity")
            
            
        }
        
        resultTextField.text = descriptionResult
        resultTextField.textColor = descriptionColor
        
        
        
        
        
        
        
        
    }
    
    
    @IBAction func slider(_ sender: UISlider) {
        let valorSlider = Int (sender.value)
        
        
        heightTextField.text = "\(valorSlider)" +  "   cms"
        
    }
    
    @IBAction func upDownWeight(_ sender: UIStepper) {
        
        
        weightTextField.text = "\(Double(stepperOne.value))" +  "   Kg"
        
    }
    
    private func getColor(forKey key: String) -> UIColor {
        
        let colorMappings: [String: UIColor] = [
            "under weight": UIColor.systemBlue,
            "normal weight": UIColor.systemGreen,
            "over weight": UIColor.systemPink,
            "obesity": UIColor.systemRed
            ]
        let returnColor = colorMappings[key]!
        return returnColor
        
        
    }
    
    
}
