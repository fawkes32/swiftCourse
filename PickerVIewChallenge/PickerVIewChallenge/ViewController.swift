//
//  ViewController.swift
//  PickerVIewChallenge
//
//  Created by Daniel Marquez on 6/23/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    
    var sex = ["Masculino","Femenino"]
    let alert = UIAlertView()
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var pickerSex: UIPickerView!
    
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnSend(sender: AnyObject) {
    
        if !txtName.text.isEmpty && !txtAge.text.isEmpty{
            if txtAge.text.toInt()! >= 18{
                lblResult.text = "\(txtName.text) si puedes votar y tu sexo es \(sex[pickerSex.selectedRowInComponent(0)])"
            } else{
                lblResult.text = "\(txtName.text) no puedes votar  y tu sexo es \(sex[pickerSex.selectedRowInComponent(0)])"
            }
        }else{
        
        self.alert.title = "Error"
        self.alert.message = "Tienes que insertar datos"
        self.alert.addButtonWithTitle("OK")
        self.alert.show()
    }
        
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        
        return self.sex.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return self.sex[row]
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    

    }

}

