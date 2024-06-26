//
//  LandmarkedApp.swift
//  Landmarked
//
//  Created by Wilson Ramirez on 6/25/24.
//

import SwiftUI

@main
struct LandmarkedApp: App {
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
