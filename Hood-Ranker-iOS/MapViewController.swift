//
//  ViewController.swift
//  Hood-Ranker-iOS
//
//  Created by Corwin Marsh on 3/2/19.
//  Copyright © 2019 Open Data Hack the Planet. All rights reserved.
//

import UIKit
import ArcGIS

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: AGSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        mapView.map = AGSMap(basemapType: .navigationVector, latitude: 47.6062, longitude: -122.3321, levelOfDetail: 10)
    }


}

