//
//  CreatePollViewController.swift
//  MakeAPoll
//
//  Created by Jay Patel on 7/7/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class CreatePollViewController: UIViewController {
    
    

    @IBOutlet weak var cancelPollButton: UIBarButtonItem!
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        valueLabel.text = Int(sender.value).description
        
        if valueLabel.text == "2" {
            optionThree.isUserInteractionEnabled = false
            optionFour.isUserInteractionEnabled = false
            optionFive.isUserInteractionEnabled = false
        }
        if valueLabel.text == "3" {
            optionThree.isUserInteractionEnabled = true
            optionFour.isUserInteractionEnabled = false
            optionFive.isUserInteractionEnabled = false
        }
        if valueLabel.text == "4" {
            optionThree.isUserInteractionEnabled = true
            optionFour.isUserInteractionEnabled = true
            optionFive.isUserInteractionEnabled = false
        }
        if valueLabel.text == "5" {
            optionThree.isUserInteractionEnabled = true
            optionFour.isUserInteractionEnabled = true
            optionFive.isUserInteractionEnabled = true
        }
        
    }
    
    
    @IBOutlet weak var optionOne: UITextField!
    
    @IBOutlet weak var optionTwo: UITextField!
    
    @IBOutlet weak var optionThree: UITextField!
    
    @IBOutlet weak var optionFour: UITextField!
    
    @IBOutlet weak var optionFive: UITextField!
    
    @IBOutlet weak var questionTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueLabel.layer.borderWidth = 2.0
        valueLabel.layer.cornerRadius = 8
        
        stepper.autorepeat = true
        stepper.minimumValue = 2
        stepper.maximumValue = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "cancel" {
                print("Cancel button tapped")
            } else if identifier == "save" {
                print("Save button tapped")
                
                
    func cancelPollButtonTapped(_ sender: Any) {
        
    }
                
    func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
}
}
}





