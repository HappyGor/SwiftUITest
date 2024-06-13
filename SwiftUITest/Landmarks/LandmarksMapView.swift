//
//  LandmarksMapView.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/13.
//

import SwiftUI
import MapKit

struct LandmarksMapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.116_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    LandmarksMapView()
}
