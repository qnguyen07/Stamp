//
//  DataApp.swift
//  Data
//
//  Created by Scholar on 6/25/24.
//

import SwiftUI
import SwiftData

@main
struct DataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        .modelContainer(for: DataItem.self)
    }
}
