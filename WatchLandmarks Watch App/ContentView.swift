//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Charlin Leo on 03/05/24.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    
    var body: some View {
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
