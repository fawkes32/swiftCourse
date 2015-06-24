//
//  ViewController.swift
//  Calculadora
//
//  Created by Daniel Marquez on 6/23/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var operandA: UITextField!
    @IBOutlet weak var operandB: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    var resultado:Int = 1
    

    
    
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnOperation(sender: UIButton) {
        
        if !operandA.text.isEmpty && !operandB.text.isEmpty{
            
        println("\(sender.tag)")
        switch sender.tag{
        case 0:
            lblResult.text = String(operandA.text.toInt()! + operandB.text.toInt()!)
        case 1:
            lblResult.text = String(operandA.text.toInt()! - operandB.text.toInt()!)
        case 2:
            lblResult.text = String(operandA.text.toInt()! * operandB.text.toInt()!)
        case 3:
            lblResult.text = String(operandA.text.toInt()! / operandB.text.toInt()!)
        case 4:
            for var i:Int = operandA.text.toInt()!; i > 0 ; i-- {
                resultado *= i
            }
            lblResult.text = String(resultado)
            resultado = 1
        default:
            println("Go baby Go")
        }
        }else{
            let alert = UIAlertView()
            alert.title = "Error"
            alert.message = "please put numbers on both textfields"
            alert.addButtonWithTitle("Acknowledge")
            alert.show()
        }
        
        
        
        
        
        
    }

}

