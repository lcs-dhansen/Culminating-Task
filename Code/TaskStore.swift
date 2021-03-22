//
//  Task Store.swift
//  Reminders Deovn (iOS)
//
//  Created by Devon Hansen on 2021-03-18.
//

import Foundation

class TaskStore: ObservableObject {
    @Published var tasks: [Task]
    
    var totalScore: Int {
        var score = 0
        for task in tasks {
            if task.completed == true {
                score += task.goalValue.rawValue
                
            }
        }
        return score
    }
    
    init(tasks: [Task] = []) {
        self.tasks = tasks
    }
}

let testStore = TaskStore(tasks: testData)
