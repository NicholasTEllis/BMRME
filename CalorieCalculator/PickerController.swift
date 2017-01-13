//
//  PickerController.swift
//  CalorieCalculator
//
//  Created by Nicholas Ellis on 1/10/17.
//  Copyright © 2017 Nicholas Ellis. All rights reserved.
//

import UIKit

extension ViewController {
    
    ////Picker View --Picker is wanky needs to be corrected, not a huge priority still
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return genderOption.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
            return ("\(genderOption[row])")
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        return genderPickerTextField.text = genderOption[row]
}
}

