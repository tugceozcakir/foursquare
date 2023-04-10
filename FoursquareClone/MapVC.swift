//
//  MapVC.swift
//  FoursquareClone
//
//  Created by Tuğçe Özçakır on 5.04.2023.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let shareButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(clickedSave))
        navigationItem.rightBarButtonItem = shareButtonItem

        navigationController?.navigationBar.tintColor = UIColor.blue
        navigationController?.navigationBar.barTintColor = UIColor.black


    }
    @objc func clickedSave() {
        
    }
}
