//
//  Location.swift
//  Landmarked
//
//  Created by Wilson Ramirez on 6/25/24.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    var id: String {
        // name = "Colosseum"
        // cityName = "Rome
        // id = "ColosseumRome"
        name + cityName
    }
}
