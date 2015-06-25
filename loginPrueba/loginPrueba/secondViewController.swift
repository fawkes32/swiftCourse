//
//  secondViewController.swift
//  loginPrueba
//
//  Created by Daniel Marquez on 6/25/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit

class secondViewController : UIViewController{
    
    var deAtras:String!
    
    @IBOutlet weak var lblWelcomeMessage: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.lblWelcomeMessage.text = "Welcome \(deAtras)"
        
    }
    
    
    
}
