//
//  LocationsView.swift
//  Landmarked
//
//  Created by Wilson Ramirez on 6/26/24.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack {
            Map(position: $vm.mapRegion)
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
