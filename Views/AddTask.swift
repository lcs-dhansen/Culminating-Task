//
//  AddTask.swift
//  Reminders Deovn
//
//  Created by Devon Hansen on 2021-03-19.
//

import SwiftUI

struct AddTask: View {
    
    //Get a reference to the store of tasks (taskStore)
    @ObservedObject var store: TaskStore
    
    @State private var goalName = ""
    @State private var description = ""
    @State private var priority = TaskPriority.low
    @State private var goalValue = GoalValue.one
    
    
    //wether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Goal Name", text: $goalName)
                    
                    TextField("Description", text: $description)
                    
                    Text("Priority of Task")
                    
                    Picker("Priority", selection: $priority) {
                        Text(TaskPriority.low.rawValue).tag(TaskPriority.low)
                        Text(TaskPriority.medium.rawValue).tag(TaskPriority.medium)
                        Text(TaskPriority.high.rawValue).tag(TaskPriority.high)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Text("Points Rewarded upon Completion")
                    
                    Picker("Point Value", selection: $goalValue) {
                        Text(String(GoalValue.one.rawValue)).tag(GoalValue.one)
                        Text(String(GoalValue.two.rawValue)).tag(GoalValue.two)
                        Text(String(GoalValue.three.rawValue)).tag(GoalValue.three)
                        Text(String(GoalValue.four.rawValue)).tag(GoalValue.four)
                        Text(String(GoalValue.five.rawValue)).tag(GoalValue.five)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationTitle("New Reminder")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        saveTask()
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        cancel()
                    }
                }
            }
            
        }
    }
    
    //function allows back button to work
    func cancel() {
        showing = false
    }
    
    func saveTask() {
        
        //add the task to the list of tasks
        store.tasks.append(Task(goalName: goalName, description: description,
                                goalValue: goalValue, priority: priority,
                                completed: false))
        
        //dismiss this view
        showing = false
        
    }
}

struct AddTask_Previews: PreviewProvider {
    static var previews: some View {
        AddTask(store: testStore, showing: .constant(true))
    }
}
