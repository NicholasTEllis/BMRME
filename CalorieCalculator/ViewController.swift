//
//  ViewController.swift
//  CalorieCalculator
//
//  Created by Nicholas Ellis on 1/9/17.
//  Copyright © 2017 Nicholas Ellis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    var genderOption = ["GENT", "LADY"]
    override func viewWillAppear(_ animated: Bool) {
      view.backgroundColor = UIColor(red: 28/255.0, green: 29/255.0, blue: 33/255.0, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        view.addSubview(genderPickerTextField)
        view.addSubview(heightTextField)
        view.addSubview(weightTextField)
        view.addSubview(ageTextField)
        view.addSubview(calculateButton)
        view.addSubview(titleLabel)
        view.addSubview(bmrLabel)
        view.addSubview(ageLabel)
        view.addSubview(genderLabel)
        view.addSubview(heightLabel)
        view.addSubview(weightLabel)
        view.addSubview(segementedControl)
        
    
        view.setNeedsUpdateConstraints()

        genderPickerTextField.delegate = self
        let genderPickerView = UIPickerView()
        genderPickerView.delegate = self
        genderPickerView.dataSource = self
        genderPickerTextField.inputView = genderPickerView
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    // ACTIONS:
    func buttonPressed() {
        
        guard let weight = weightTextField.text,
            let height = heightTextField.text,
            let age = ageTextField.text,
            let doubleWeight = Double(weight),
            let doubleHeight = Double(height),
            let doubleAge = Double(age) else { return }
        
        if segementedControl.selectedSegmentIndex == 0 {
            if genderPickerTextField.text == "GENT" {
                
                let maleWeight = (10 * doubleWeight)
                let maleHeight = (6.25 * doubleHeight)
                let maleAge = (5 * doubleAge)
                let BMR = maleWeight + maleHeight - maleAge + 5
                
                bmrLabel.text = ("BMR: \(BMR)")
                
            } else {
                let femaleWeight = (10 * doubleWeight)
                let femaleHeight = (6.25 * doubleHeight)
                let femaleAge = (5 * doubleAge)
                
                let BMR = femaleWeight + femaleHeight - femaleAge - 161
                bmrLabel.text = ("BMR: \(BMR)")
            }
            
        } else {
            
            let pounds = doubleWeight / 0.45359237
            let kilos = pounds * 0.45359237
            let inches = doubleHeight / 2.54
            let cms = inches * 2.54
            
            if genderPickerTextField.text == "GENT" {
                
                let maleWeight = (10 * kilos)
                let maleHeight = (6.25 * cms)
                let maleAge = (5 * doubleAge)
                let BMR = maleWeight + maleHeight - maleAge + 5
                
                bmrLabel.text = ("BMR: \(BMR)")
                
            } else {
                let femaleWeight = (10 * kilos)
                let femaleHeight = (6.25 * cms)
                let femaleAge = (5 * doubleAge)
                
                let BMR = femaleWeight + femaleHeight - femaleAge - 161
                bmrLabel.text = ("BMR: \(BMR)")
            }
        }
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == genderPickerTextField {
            genderPickerTextField.text = "GENT"
        }
    }

    lazy var segementedControl: UISegmentedControl! = {
       var view = UISegmentedControl()
        view = UISegmentedControl(items: ["Metric", "Imperial"])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.selectedSegmentIndex = 0
        view.layer.cornerRadius = 5
        view.tintColor = UIColor(red: 194/255.0, green: 251/255.0, blue: 72/255.0, alpha: 1)
        return view
    }()
    
    lazy var genderPickerTextField: UITextField! = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .left
        view.font = UIFont(name: "MyanmarSangamMN", size: 17)
        view.backgroundColor = UIColor(red: 211/255.0, green: 210/255.0, blue: 211/255.0, alpha: 1)
        return view
    }()
    
    lazy var heightTextField: UITextField! = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .left
        view.keyboardType = .numberPad
        view.keyboardAppearance = .dark
        view.font = UIFont(name: "MyanmarSangamMN", size: 17)
        view.backgroundColor = UIColor(red: 211/255.0, green: 210/255.0, blue: 211/255.0, alpha: 1)
        return view
    }()
    
    lazy var weightTextField: UITextField! = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .left
        view.font = UIFont(name: "MyanmarSangamMN", size: 17)
        view.keyboardType = .numberPad
        view.keyboardAppearance = .dark
        view.backgroundColor = UIColor(red: 211/255.0, green: 210/255.0, blue: 211/255.0, alpha: 1)

        return view
    }()
    
    lazy var ageTextField: UITextField! = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .left
        view.font = UIFont(name: "MyanmarSangamMN", size: 17)
        view.keyboardType = .numberPad
        view.keyboardAppearance = .dark
        view.backgroundColor = UIColor(red: 211/255.0, green: 210/255.0, blue: 211/255.0, alpha: 1)
        
        return view
    }()
    

    
    ///Button
    
    lazy var calculateButton: UIButton! = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(ViewController.buttonPressed), for: .touchUpInside)
        view.setTitle("GET BMR", for: .normal)
        
        view.backgroundColor = UIColor(red: 194/255.0, green: 251/255.0, blue: 72/255.0, alpha: 1)
        view.setTitleColor(UIColor(red: 28/255.0, green: 29/255.0, blue: 33/255.0, alpha: 1), for: .normal)
        view.setContentCompressionResistancePriority(250, for: .vertical)
        view.titleLabel?.font = UIFont(name: "Menlo-Regular", size: 36)
      
        
        return view
    }()
    
    ///Label
    
    lazy var titleLabel: UILabel! = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "BMR ME"
        view.font = UIFont(name: "Menlo-Regular", size: 42)
        view.textAlignment = .center
        view.textColor = UIColor(red: 194/255.0, green: 251/255.0, blue: 72/255.0, alpha: 1)
        
        return view
    }()
    
    lazy var bmrLabel: UILabel! = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .left
        view.font = UIFont(name: "AppleSDGothicNeo-Light", size: 17)
        view.text = "BMR:"
        view.textColor = UIColor(red: 194/255.0, green: 251/255.0, blue: 72/255.0, alpha: 1)
        //view.backgroundColor = UIColor(red: 211/255.0, green: 210/255.0, blue: 211/255.0, alpha: 1)
        return view
    }()
    
    //Title Label
    
    lazy var genderLabel: UILabel! = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .left
        view.font = UIFont(name: "AppleSDGothicNeo-Light", size: 17)
        view.text = "Gender"
        view.textColor = UIColor(red: 211/255.0, green: 210/255.0, blue: 211/255.0, alpha: 1)
        
        return view
    }()
    
    lazy var ageLabel: UILabel! = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .left
        view.font = UIFont(name: "AppleSDGothicNeo-Light", size: 17)
        view.text = "Age"
        view.textColor = UIColor(red: 211/255.0, green: 210/255.0, blue: 211/255.0, alpha: 1)
        return view
    }()
    
    lazy var weightLabel: UILabel! = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .left
        view.font = UIFont(name: "AppleSDGothicNeo-Light", size: 17)
        view.text = "Weight"
        view.textColor = UIColor(red: 211/255.0, green: 210/255.0, blue: 211/255.0, alpha: 1)

        return view
    }()
    
    lazy var heightLabel: UILabel! = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .left
        view.text = "Height"
        view.font = UIFont(name: "AppleSDGothicNeo-Light", size: 17)
        view.textColor = UIColor(red: 211/255.0, green: 210/255.0, blue: 211/255.0, alpha: 1)

        
        return view
    }()
}
