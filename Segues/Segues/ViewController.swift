//
//  ViewController.swift
//  Segues
//
//  Created by Daniel Marquez on 6/24/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func cambio(sender: AnyObject) {
        performSegueWithIdentifier("cambioBoton", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let second = segue.destinationViewController as! SecondViewController
        second.valorRecibido = "Holaa"
    }

}

