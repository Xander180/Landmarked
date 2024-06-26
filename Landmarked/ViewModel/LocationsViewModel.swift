//
//  LocationsViewModel.swift
//  Landmarked
//
//  Created by Wilson Ramirez on 6/26/24.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
