//
//  NSTableViewController.swift
//  NavigationStuff
//
//  Created by Daniel Marquez on 6/24/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit

class NSTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    private var socotroco = ["Socotroco", "Chafaldrafa", "Aguacate", "Hola"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.socotroco.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cell")
        cell.textLabel!.text = self.socotroco[indexPath.row]
        return cell
        
    }
    @IBAction func addItem(sender: AnyObject) {
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Deberias poner algo de texto"
        alert.addButtonWithTitle("OK")
        alert.show()
        println("Si entra")
    }
    
    func tableView(tableView:UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle,forRowAtIndexPath indexPath: NSIndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
            
            socotroco.removeAtIndex(indexPath.row)
            
                tableView.reloadData()
            }
            
        }
    @IBOutlet weak var addItem: UIButton!
        
        
    }

    

