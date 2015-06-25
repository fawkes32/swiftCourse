//
//  ViewController.swift
//  HTTPPrueba
//
//  Created by Daniel Marquez on 6/25/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var request:HTTPTask!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initHTTP()
        callService()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initHTTP(){
        self.request = HTTPTask()
        self.request.requestSerializer = JSONRequestSerializer()
        self.request.responseSerializer = JSONResponseSerializer()
    }
    
    func callService(){
        
        var metodo = "http://desarrollo.gservicio.com:8080/cursoswift/services.php/saluda/Daniel%20Marquez"
        
        self.request.GET(metodo,
            parameters: nil,
            completionHandler: {(response: HTTPResponse) in self.onRespuesta(response)})
        
    }
    
    
    func onRespuesta( response: HTTPResponse){
        if let respuesta = response.responseObject as? Dictionary<String,AnyObject>{
            NSOperationQueue.mainQueue().addOperationWithBlock{
            println(respuesta["mensaje"]!)
            }
        }
    }


}

