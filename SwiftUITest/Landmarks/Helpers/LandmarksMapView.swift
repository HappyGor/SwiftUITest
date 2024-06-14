//
//  LandmarksMapView.swift
//  SwiftUITest
//
//  Created by GorCat on 2024/6/13.
//

import SwiftUI
import MapKit

struct LandmarksMapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        // 在这里使用绑定是因为不需要检测何时有人通过与地图交互来更改位置
//        Map(initialPosition: .region(region))
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    LandmarksMapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.116_868))
}
