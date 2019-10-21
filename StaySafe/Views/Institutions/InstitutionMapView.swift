//
//  InstitutionMapView.swift
//  StaySafe
//
//  Created by Patryk Bresso on 07/10/2019.
//  Copyright © 2019 stud. All rights reserved.
//


import SwiftUI
import MapKit

struct InstitutionMapView: UIViewRepresentable {
    
    var latitude: Double
    var longitude: Double
    
    
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: latitude, longitude: longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        view.addAnnotation(annotation)
    }
}

struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        InstitutionMapView(latitude: 0.0, longitude: 0.0)
    }
}
