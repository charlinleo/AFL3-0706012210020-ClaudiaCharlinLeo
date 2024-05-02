//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Charlin Leo on 02/05/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}