//
//  ViewController.swift
//  PickList
//
//  Created by Daniel Marquez on 6/23/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    private var listaSuper = ["Harina", "Huevos", "Mantequilla", "Miel"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return self.listaSuper.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return self.listaSuper[row]
    }
    
    @IBAction func btnAction(sender: AnyObject) {
        var indiceSeleccionado = pickerView.selectedRowInComponent(0)
        println(listaSuper[indiceSeleccionado])
    }

}

