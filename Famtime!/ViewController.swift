//
//  ViewController.swift
//  Famtime!
//
//  Created by Andre Elandra on 26/04/19.
//  Copyright © 2019 ADA Team 07. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    var packageNum = Int()
// Question page
    @IBAction func saveButton(_ sender: Any) {
        //save namaparent&child
        UserDefaults.standard.set(textFieldParents.text, forKey: "inputparent")
        
        UserDefaults.standard.set(textFieldChild.text, forKey: "inputchild")
        
        UserDefaults.standard.set(textFieldBirth.text , forKey: "inputdate")
    }
    
    
    
    func createPickerView()
    {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        
        textFieldBirth.inputView = pickerView
        
    }
    
    func dismissPickerView(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.dismissBirthView))
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        
        textFieldBirth.inputAccessoryView = toolBar
    }
    
    @objc func dismissBirthView()
    {
        view.endEditing(true)
    }
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var textFieldBirth: UITextField!
    @IBOutlet weak var textFieldParents: UITextField!
    @IBOutlet weak var textFieldChild: UITextField!
    @IBOutlet weak var lblValidationMessage: UILabel!
    
    private var datePicker: UIDatePicker?
    
    @IBAction func nextButtonDiPencet(_ sender: UIButton) {
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if textFieldParents.text == "" {
            lblValidationMessage.isHidden = false
            lblValidationMessage.text = "Please fill parent's name !"
            return false
        }
        else if textFieldChild.text == "" {
            lblValidationMessage.isHidden = false
            lblValidationMessage.text = "Please fill child's name !"
            return false
        }
        else if textFieldBirth.text == "" {
            lblValidationMessage.isHidden = false
            lblValidationMessage.text = "Please fill child's birthdate !"
            return false
        }
        else
        {
            lblValidationMessage.isHidden = true
            lblValidationMessage.text = ""
            return true
        }
    }
    

//    part sg
    override func viewDidLoad() {
        super.viewDidLoad()

        if let txtField = textFieldBirth {
            //membuat UIPickerView, delegate
            createPickerView()
            //membuat UItoolbar
            dismissPickerView()
            //end editing view
            dismissBirthView()
            
            //create datepicker
            datePicker = UIDatePicker()
            datePicker?.datePickerMode = .date
            datePicker?.addTarget(self, action: #selector(ViewController.dateChanged(datePicker:)), for: .valueChanged)
            
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped(gestureRecognizer:)))
            
            view.addGestureRecognizer(tapGesture)
            
            txtField.inputView = datePicker
        }
        
        
        nextButton.layer.cornerRadius = 24
        nextButton.layer.masksToBounds = true
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        datePicker.maximumDate = Calendar.current.date(byAdding: .year, value: 0, to: Date())
        datePicker.minimumDate = Calendar.current.date(byAdding: .year, value: -20, to: Date());
        
        if let txtField = textFieldBirth {
        txtField.text = dateFormatter.string(from: datePicker.date)
        }
        
    }
    
}

