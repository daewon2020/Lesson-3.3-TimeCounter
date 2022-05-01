//
//  Lesson_3_3_TimeCounterApp.swift
//  Lesson 3.3 TimeCounter
//
//  Created by Константин Андреев on 30.04.2022.
//

import SwiftUI

@main
struct Lesson_3_3_TimeCounterApp: App {
    @StateObject private var storageManager = StorageManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(storageManager)
        }
    }
}
