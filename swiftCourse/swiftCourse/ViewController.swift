//
//  ViewController.swift
//  swiftCourse
//
//  Created by Daniel Marquez on 6/22/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var lblResultado: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionSaludo(sender: AnyObject) {
        if !txtNombre.text.isEmpty{
            lblResultado.text = "Hola Amigo " + txtNombre.text!
        }else{
            lblResultado.text = "Necesito un nombre "
        }
        
        
    }

    @IBAction func actionDespedida(sender: AnyObject) {
        
        if !txtNombre.text.isEmpty{
            lblResultado.text = "Adios Amigo " + txtNombre.text!
        }else{
            lblResultado.text = "Necesito un nombre "
        }
       
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
}

