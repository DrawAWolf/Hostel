//
//  HostelDetailController.swift
//  Hostel
//
//  Created by Jushy Shen on 2017/4/28.
//  Copyright © 2017年 Jushy Shen. All rights reserved.
//

import UIKit
import GoogleMaps

class HostelDetailViewController: UIViewController {
    
    var nameDetailLabel: UILabel!
    var addressDetailLabel: UILabel!
    var priceDetailLabel: UILabel!
    var phoneNum1DetailLabel: UILabel!
    var emailDetailLabel: UILabel!
    var urlLabel: UILabel!
    
    var mapViewOut: UIView!
    
    var getName = String()
    var getAddress = String()
    var getPrice  = String()
    var getPhoneNum1 = String()
    var getEmail = String()
    var getUrl = String()
    var getLatitude = Double()
    var getLongitude = Double()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orange
        nameDetailLabel.text = getName
        addressDetailLabel.text = getAddress
        priceDetailLabel.text = getPrice
        phoneNum1DetailLabel.text = getPhoneNum1
        emailDetailLabel.text = getEmail
        urlLabel.text = getUrl
        
        let latitude = getLatitude
        let longitude = getLongitude
        
        
        
        GMSServices.provideAPIKey("AIzaSyCSIBLJSlAUDyX1Pek78JGXa0sMlylrbM0")
        let camera = GMSCameraPosition.camera(withLatitude: latitude, longitude: longitude, zoom: 16)
        let mapView = GMSMapView.map(withFrame: mapViewOut.bounds, camera: camera)
        mapView.autoresizesSubviews = true
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.isMyLocationEnabled = true
        self.mapViewOut.addSubview(mapView)
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        marker.title = getName
        marker.map = mapView  
 }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
