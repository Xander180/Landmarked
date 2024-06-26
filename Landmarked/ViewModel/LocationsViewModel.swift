//
//  LocationsViewModel.swift
//  Landmarked
//
//  Created by Wilson Ramirez on 6/26/24.
//

import Foundation
import SwiftUI
import MapKit
import _MapKit_SwiftUI

class LocationsViewModel: ObservableObject {
    // ALl loaded locations
    @Published var locations: [Location]
    
    // Current location on map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    @Published var mapRegion: MapCameraPosition
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.mapRegion = .region(
            MKCoordinateRegion(center: locations.first!.coordinates, span: mapSpan))
        self.updateMapRegion(location: mapLocation)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = .region(MKCoordinateRegion(center: location.coordinates, span: mapSpan))
        }
    }
}
