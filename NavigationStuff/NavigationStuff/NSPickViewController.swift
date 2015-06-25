//
//  NSPickViewController.swift
//  NavigationStuff
//
//  Created by Daniel Marquez on 6/24/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit

class NSPickViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var lblResult: UILabel!
    private var socotroco = ["Socotroco", "Chafaldrafa", "Aguacate", "Hola"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return socotroco.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return socotroco[row]
    }
    @IBAction func btnSelected(sender: AnyObject) {
        lblResult.text = "El item seleccionado es \(socotroco[picker.selectedRowInComponent(0)])"
        
    }
}
