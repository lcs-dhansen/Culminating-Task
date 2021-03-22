//
//  Culminating_TaskApp.swift
//  Culminating Task
//
//  Created by Devon Hansen on 2021-03-10.
//

import SwiftUI

@main
struct Culminating_TaskApp: App {
    private var store = TaskStore(tasks: testData)
    private var showing = false

    var body: some Scene {
        WindowGroup {
            NavigationView  {
                ContentView(store: store, showing: .constant(true))
         
            }
        }
    }
}


//var body: some Scene {
//    WindowGroup {
//        ContentView()
//    }
//}
