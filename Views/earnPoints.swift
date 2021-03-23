//
//  ContentView.swift
//  Shared
//
//  Created by Devon Hansen on 2021-03-18.
//

import SwiftUI

struct EarnPoints: View {
    
    
    //stores all tasks that are being tracked
    @ObservedObject var store: TaskStore
    
    //controls wether the add task view is showing
    @State private var showingAddTask = false
    @State private var showingDeleteGoal = false
    
//    func deleteItems(at offsets: IndexSet) {
//        tasks.items.remove(atOffsets: offsets)
//    }

    var body: some View {
        List(store.tasks) { task in
            TaskCell(task: task)
//            Text("total points \(store.totalScore)")
        }
        .navigationTitle("Reminders")
//        .onDelete(perform: deleteItems)
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    showingAddTask = true
                }
            }
        
        }
        .sheet(isPresented: $showingAddTask, content: {
            AddTask(store: store, showing: $showingAddTask)
        })
    }
}

struct EarnPoints_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EarnPoints(store: testStore)
        }
    }
}
