//
//  Constraints.swift
//  CalorieCalculator
//
//  Created by Nicholas Ellis on 1/10/17.
//  Copyright © 2017 Nicholas Ellis. All rights reserved.
//

import UIKit

extension ViewController {
    
    //// MARK: - Text Fields
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        genderPickerTextFieldConstraints()
        ageTextFieldConstraints()
        heightTextFieldConstraints()
        weightTextFieldConstraints()
        buttonConstraints()
        titleLabelConstraints()
        bmrLabelConstraints()
        genderLabelConstraints()
        ageLabelConstraints()
        weightLabelConstraints()
        heightLabelConstraints()
        segementedControlConstraints()
       
    }
    
    func genderPickerTextFieldConstraints() {
        
        let horizontal = genderPickerTextField.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor)
        let verticalConstraint = genderPickerTextField.centerYAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 75)
        let width = genderPickerTextField.widthAnchor.constraint(equalToConstant: 220)
        let height = genderPickerTextField.heightAnchor.constraint(equalToConstant: 50)
        NSLayoutConstraint.activate([horizontal,verticalConstraint,width,height])
        
    }
    
    func ageTextFieldConstraints() {
        let horizontal = ageTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let vertical = ageTextField.centerYAnchor.constraint(equalTo: genderPickerTextField.bottomAnchor, constant: 75)
        let width = ageTextField.widthAnchor.constraint(equalToConstant: 220)
        let height = ageTextField.heightAnchor.constraint(equalToConstant: 50)
        NSLayoutConstraint.activate([horizontal,width,vertical,height])
        
    }
    
    func heightTextFieldConstraints() {
        
        let horizontal = heightTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let vertical = heightTextField.centerYAnchor.constraint(equalTo: ageTextField.bottomAnchor, constant: 75)
        let width = heightTextField.widthAnchor.constraint(equalToConstant: 220)
        let height = heightTextField.heightAnchor.constraint(equalToConstant: 50)
        NSLayoutConstraint.activate([horizontal,vertical,width,height])
    }
    
    func weightTextFieldConstraints() {
        
        let horizontal = weightTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let vertical = weightTextField.centerYAnchor.constraint(equalTo: heightTextField.bottomAnchor, constant: 75)
        let width = weightTextField.widthAnchor.constraint(equalToConstant: 220)
        let height = weightTextField.heightAnchor.constraint(equalToConstant: 50)
        NSLayoutConstraint.activate([horizontal,vertical,width,height])
        
    }
    
    //// MARK: - Button 
    
    func buttonConstraints() {
        
        let horizontal = calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let vertical = calculateButton.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
        let width = calculateButton.widthAnchor.constraint(equalToConstant: 500)
        let height = calculateButton.heightAnchor.constraint(equalToConstant: 100)
        
        NSLayoutConstraint.activate([horizontal,vertical,width,height])
        
    }
    
    //// MARK: - Label
    
    func titleLabelConstraints() {
        
        let horizontal = titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let vertical = titleLabel.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 55)
        let width = titleLabel.widthAnchor.constraint(equalToConstant: 500)
        let height = titleLabel.heightAnchor.constraint(equalToConstant: 65)
        NSLayoutConstraint.activate([horizontal,vertical,width,height])

    }
    
    func bmrLabelConstraints() {
        let horizontal = bmrLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let vertical = bmrLabel.centerYAnchor.constraint(equalTo: segementedControl.bottomAnchor, constant: 45)
        let width = bmrLabel.widthAnchor.constraint(equalToConstant: 220)
        let height = bmrLabel.heightAnchor.constraint(equalToConstant: 30)
        NSLayoutConstraint.activate([horizontal,width,vertical,height])
    }
    
    //// MARK: - Title Text Field Labels
    
    func genderLabelConstraints() {
        let horizontal = genderLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 3)
        let vertical = genderLabel.centerYAnchor.constraint(equalTo: genderPickerTextField.topAnchor, constant: -15)
        let width = genderLabel.widthAnchor.constraint(equalToConstant: 220)
        let height = genderLabel.heightAnchor.constraint(equalToConstant: 50)
        NSLayoutConstraint.activate([horizontal,width,vertical,height])
    }
    func ageLabelConstraints() {
        let horizontal = ageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 3)
        let vertical = ageLabel.centerYAnchor.constraint(equalTo: ageTextField.topAnchor, constant: -15)
        let width = ageLabel.widthAnchor.constraint(equalToConstant: 220)
        let height = ageLabel.heightAnchor.constraint(equalToConstant: 50)
        NSLayoutConstraint.activate([horizontal,width,vertical,height])
    }
    func heightLabelConstraints() {
        let horizontal = heightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 3)
        let vertical = heightLabel.centerYAnchor.constraint(equalTo: heightTextField.topAnchor, constant: -15)
        let width = heightLabel.widthAnchor.constraint(equalToConstant: 220)
        let height = heightLabel.heightAnchor.constraint(equalToConstant: 50)
        NSLayoutConstraint.activate([horizontal,width,vertical,height])
    }
    func weightLabelConstraints() {
        let horizontal = weightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 3)
        let vertical = weightLabel.centerYAnchor.constraint(equalTo: weightTextField.topAnchor, constant: -15)
        let width = weightLabel.widthAnchor.constraint(equalToConstant: 220)
        let height = weightLabel.heightAnchor.constraint(equalToConstant: 50)
        NSLayoutConstraint.activate([horizontal,width,vertical,height])
    }
    
    //// MARK: - Segement Control 
    
    func segementedControlConstraints() {
        let horizontal = segementedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let vertical = segementedControl.centerYAnchor.constraint(equalTo: weightTextField.bottomAnchor, constant: 45)
        let width = segementedControl.widthAnchor.constraint(equalToConstant: 200)
        let height = segementedControl.heightAnchor.constraint(equalToConstant: 30)
        NSLayoutConstraint.activate([horizontal,width,vertical,height])
    
    }
}
