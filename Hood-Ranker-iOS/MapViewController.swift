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
        
        addLayers()
    }

    func addLayers() {
        let publicHealthURL = URL(string: "https://gisdata.kingcounty.gov/arcgis/rest/services/OpenDataPortal/pubsafe__restaurant_inspections_point/MapServer/857")
        let featureTable = AGSServiceFeatureTable(url: publicHealthURL!)
        let layer = AGSFeatureLayer(featureTable: featureTable)
        mapView.map?.operationalLayers.add(layer)
    }

}

