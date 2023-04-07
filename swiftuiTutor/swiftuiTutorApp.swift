//
//  swiftuiTutorApp.swift
//  swiftuiTutor
//
//  Created by Anton Honcharov on 28.03.2023.
//

import SwiftUI

@main
struct swiftuiTutorApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
