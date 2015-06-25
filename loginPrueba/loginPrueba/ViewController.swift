//
//  ViewController.swift
//  loginPrueba
//
//  Created by Daniel Marquez on 6/25/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    
    private var request:HTTPTask!
    private var respuestaServerMensaje:String!
    private var respuestaServerResultado:String!
    
    private let alert = UIAlertView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        if NSUserDefaults.standardUserDefaults().objectForKey("username") != nil {
            performSegueWithIdentifier("succes", sender: self)
        }
        
        initHTTP()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func initHTTP(){
        self.request = HTTPTask()
        self.request.requestSerializer = JSONRequestSerializer()
        self.request.responseSerializer = JSONResponseSerializer()
        
    }
    
    func callService(userName:String, passWord:String){
        
        
        if !userName.isEmpty && !passWord.isEmpty{
            
        var userNameFix = userName.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet())!
        var passWordFix = passWord.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet())!
        
        var metodo = "http://desarrollo.gservicio.com:8080/cursoswift/services.php/login/" + userNameFix + "/" + passWordFix
        
        self.request.GET(metodo,
            parameters: nil,
            completionHandler: {(response: HTTPResponse) in self.onRespuesta(response)})
            
        } else {
            alert.title = "ERROR"
            alert.message = "empty username or password"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            
            
        }
        
        
    }
    
    
    func onRespuesta(response: HTTPResponse){
        if let respuesta = response.responseObject as? Dictionary<String,AnyObject>{
            
            NSOperationQueue.mainQueue().addOperationWithBlock{
                var respuestaServer: String = respuesta["resultado"] as! String
                println(respuestaServer)
                
                self.respuestaServerResultado = respuesta["resultado"] as! String
                
                if self.respuestaServerResultado == "OK" {
                    
                    NSUserDefaults.standardUserDefaults().setObject(self.txtUserName.text, forKey: "username")
                    
                    self.performSegueWithIdentifier("succes", sender: self)
                    
                }else{
                    self.respuestaServerMensaje = respuesta["mensaje"] as! String
                    
                    self.alert.title = "\(self.respuestaServerResultado)"
                    self.alert.message = "\(self.respuestaServerMensaje)"
                    self.alert.addButtonWithTitle("OK")
                    self.alert.show()
                }
                

            
            
            
            
            
            }
            
            
            
            }
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAcces(sender: AnyObject) {
        var userName = txtUserName.text!
        var passWord = txtPass.text!
        callService(userName, passWord: passWord)
        
        
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let second = segue.destinationViewController as! secondViewController
        second.deAtras = self.txtUserName.text
        
    
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

}

