//
//  MapView.swift
//  Demo
//
//  Created by Hitesh Chauhan on 25/9/2562 BE.
//  Copyright © 2562 Hitesh Chauhan. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: UIViewRepresentable {
    var location = CLLocation()
        func makeUIView(context: Context) -> MKMapView {
            MKMapView(frame: .zero)
        }
    

        func updateUIView(_ view: MKMapView, context: Context) {
            let coordinate = CLLocationCoordinate2D(
                latitude: 34.011286, longitude: -116.166868)
            let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            view.setRegion(region, animated: true)
        }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
