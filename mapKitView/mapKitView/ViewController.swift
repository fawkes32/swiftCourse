//
//  ViewController.swift
//  mapKitView
//
//  Created by Daniel Marquez on 6/25/15.
//  Copyright (c) 2015 Tec de Monterrey. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapView.delegate = self
        //self.mapView.mapType = MKMapType.Satellite
        
        
        let location = CLLocationCoordinate2D(
            
            latitude: 25.672924,
            longitude: -100.349537
            //Localizacion de Londres
            //latitude: 51.50007773,
            //longitude: -0.1246402
        )
        // 2
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        self.mapView.showsPointsOfInterest = false
        
        //3
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "PrepaTec"
        annotation.subtitle = "Campus Garza Sada"
        //annotation.title = "Big Ben"
        //annotation.subtitle = "London"
        mapView.addAnnotation(annotation)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

