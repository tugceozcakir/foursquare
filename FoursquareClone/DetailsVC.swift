//
//  DetailsVC.swift
//  FoursquareClone
//
//  Created by Tuğçe Özçakır on 8.04.2023.
//

import UIKit
import MapKit

class DetailsVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var placeAtmosphereLabel: UILabel!
    @IBOutlet weak var placeTypeLabel: UILabel!
    @IBOutlet weak var placeNameLabel: UILabel!
    @IBOutlet weak var placeImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
