//
//  ViewController.swift
//  HTTPPrueba
//
//  Created by Daniel Marquez on 6/25/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var request:HTTPTask!
    
    @IBOutlet weak var texto: UITextField!
  
    @IBOutlet weak var lblRespuesta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initHTTP()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    
    
    }
    
    
    
    @IBAction func probarServer(sender: AnyObject) {
        
        callService()
    }
    func initHTTP(){
        self.request = HTTPTask()
        self.request.requestSerializer = JSONRequestSerializer()
        self.request.responseSerializer = JSONResponseSerializer()
    }
    
    func callService(){
        var nombre = texto.text!
        nombre = nombre.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet())!
        
        var metodo = "http://desarrollo.gservicio.com:8080/cursoswift/services.php/saluda/" + nombre
        
        self.request.GET(metodo,
            parameters: nil,
            completionHandler: {(response: HTTPResponse) in self.onRespuesta(response)})
        
    }
    
    
    func onRespuesta( response: HTTPResponse){
        if let respuesta = response.responseObject as? Dictionary<String,AnyObject>{
            NSOperationQueue.mainQueue().addOperationWithBlock{
            var respuestaServer: String = respuesta["mensaje"]! as! String
                self.lblRespuesta.text = respuestaServer
            }
        }
    }


}

